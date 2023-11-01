const {validateAccessToken} = require('../services/tokenService');
const UsersTokenModel = require('../models/UsersTokenModel');
const UserModel = require('../models/UserModel');
const UserDto = require('../dtos/UserDto');

module.exports = async function (req, res, next){
    try {
        const usersTokenModel = new UsersTokenModel();
        const userModel = new UserModel();

        const authorizationHeader = req.headers.authorization;
        if(!authorizationHeader)
            return res.status(401).json();

        const accessToken = authorizationHeader.split(' ')[1];
        if(!accessToken)
            return res.status(401).json();

        const userTokenRow = await usersTokenModel.getByAccessToken(accessToken);
        if(!userTokenRow)
            return res.status(401).json();

        const user = validateAccessToken(accessToken);
        if(!user)
            return res.status(401).json();

        const userData = await userModel.getById(user.id);

        req.user = new UserDto(userData);

        next();
    }catch (e) {
        return res.status(401).json();
    }
};