const bcrypt = require('bcrypt');
const {validationResult} = require('express-validator');
const UserModel = require('../models/UserModel');
const UsersTokenModel = require('../models/UsersTokenModel');
const {generateTokens, validateRefreshToken} = require('../services/tokenService');
const UserDto = require('../dtos/UserDto');
const {upload} = require('../helpers/uploadHelper');
const {randomNumber} = require('../helpers/stringHelper');
const MailHelper = require('../helpers/MailHelper');
const {userProfileImgPath} = require('../config/defaults');

const {sendPush} = require('../services/pushNotificationService');


exports.test111 = function(req, res){

    sendPush();


    return res.status(200).json(res.data);

};

exports.recoverPasswordValidate = function(req, res){
    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    return res.status(200).json(res.data);
};

exports.recoverPassword = async function(req, res){
    let {password} = req.body;
    const userModel = new UserModel();


    console.log(req.user);

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    password = await bcrypt.hash(password, 3);
    await userModel.update(req.user.id, {
        password: password,
        forgot_password_code: ''
    });

    return res.status(200).json(res.data);
};

exports.forgotPassword = async function(req, res){
    const {email} = req.body;
    const userModel = new UserModel();
    const randomCode = randomNumber(5);

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    await userModel.updateByEmail(email, {
        forgot_password_code: randomCode
    });

    await MailHelper.sendMail(email, 'recover password',
        `Dear user,
         To verify your email, this is your code ${randomCode}
         If you did not create an account, then ignore this email.`
    );

    return res.status(200).json(res.data);
};

exports.connect = async function(req, res){
    res.data.user = req.user;

    return res.status(200).json(res.data);
};

exports.logout = async function(req, res){
    const usersTokenModel = new UsersTokenModel();

    await usersTokenModel.deleteTokens(req.user.id);

    return res.status(200).json(res.data);
};

exports.refresh = async function(req, res){
    const userModel = new UserModel();
    const usersTokenModel = new UsersTokenModel();
    
    const {refreshToken} = req.body;
    if(!refreshToken)
        return res.status(401).json(req.response);

    const userData = validateRefreshToken(refreshToken);
    if(!userData)
        return res.status(401).json(res.data);
    
    const userToken = await usersTokenModel.getByRefreshToken(refreshToken);
    if(!userToken)
        return res.status(401).json(res.data);

    const user = await userModel.getById(userToken.user_id);
    res.data.user = new UserDto(user);
    res.data.tokens = generateTokens({...res.data.user});

    await usersTokenModel.updateTokens(user.id, res.data.tokens);

    return res.status(200).json(res.data);
};

exports.signUp = async function(req, res){
    let image = '';
    let user = req.body;

    const userModel = new UserModel();
    const usersTokenModel = new UsersTokenModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    if(req.files && req.files['img'])
        image = await upload(req.files['img'], userProfileImgPath);

    const password = await bcrypt.hash(user.password, 3);
    user.id = await userModel.insert({
        name: user.name,
        email: user.email,
        phone: user.phone,
        img: image,
        state: user.state,
        password: password,
        country_id: user.country,
        gender_id: user.gender
    });

    user.country_id = user.country;
    user.gender_id = user.gender;

    res.data.user = new UserDto(user);
    res.data.tokens = generateTokens({...res.data.user});

    await usersTokenModel.updateTokens(user.id, res.data.tokens);

    return res.json(res.data);
};

exports.login = async function(req, res){
    const {email, password, device_token} = req.body;
    const userModel = new UserModel();
    const usersTokenModel = new UsersTokenModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    const user = await userModel.getByEmail(email);
    if(!user || !(await bcrypt.compare(password, user.password))){
        res.data.errorMessage = 'email or password is wrong';
        return res.status(400).json(res.data);
    }

    await userModel.update(user.id, {
        device_token: device_token
    });

    res.data.user = new UserDto(user);
    res.data.tokens = await generateTokens({...res.data.user});

    await usersTokenModel.updateTokens(user.id, res.data.tokens);

    return res.status(200).json(res.data);
};