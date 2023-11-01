const bcrypt = require('bcrypt');
const {body, check} = require("express-validator");
const UserModel = require("../../models/UserModel");

const updateBody = [
    check('img').custom(async (value, {req}) => {
        if(!req.files || !req.files['img']) return;

        const {img} = req.files;
        const [type, ext] = img.mimetype.split('/');

        if(type !== 'image')
            throw new Error('img is not image type');
    }),
    body('name').notEmpty()
        .withMessage('name is require'),
    body('country').notEmpty().isNumeric()
        .withMessage('Country is require (numeric)'),
    body('gender').isNumeric().isLength({ min: 0, max: 1 })
        .withMessage('Gender is require (numeric { min: 0, max: 1 })'),
    body('state').notEmpty()
];

const loginBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('password').notEmpty()
        .withMessage('Password is require'),
];

const resetPasswordBody = [
    body('old_password').notEmpty()
        .withMessage('Old password is require'),
    body('old_password').custom(async (value, {req}) => {
        const userModel = new UserModel();
        const user = await userModel.getById(req.user.id);

        const isPassEquals = await bcrypt.compare(value, user.password);

        if(!isPassEquals)
            throw new Error('Old password wrong');
    }),
    body('password').notEmpty()
        .withMessage('Password is require'),
    body('confirm_password').notEmpty()
        .withMessage('confirm_password require'),
    body('confirm_password').custom(async (value, {req}) => {
        if(req.body.password !== value)
            throw new Error('Password dont much the confirm_password');
    }),
];

const signUpBody = [
    check('img').custom(async (value, {req}) => {
        if(!req.files || !req.files['img']) return;

        const {img} = req.files;
        const [type, ext] = img.mimetype.split('/');

        if(type !== 'image')
            throw new Error('img is not image type');
    }),

    body('name').notEmpty()
        .withMessage('name is require'),
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('email').isEmail().normalizeEmail().withMessage('please write true email')
        .custom(async value => {
            const userModel = new UserModel();

            return userModel.checkEmailExists(value).then(has => {
                if(has) throw new Error('Email is exists');
            });
        }),
    body('phone').notEmpty()
        .withMessage('Phone is require'),
    body('phone').isString().isLength({ min: 9, max: 20 })
        .withMessage('Phone is not right (string { min: 9, max: 20 })'),
    body('country').notEmpty().isNumeric()
        .withMessage('Country is require (numeric)'),
    body('gender').isNumeric().isLength({ min: 0, max: 1 })
        .withMessage('Gender is require (numeric { min: 0, max: 1 })'),
    body('state').notEmpty()
        .withMessage('State is require'),
    body('password').isLength({ min: 6 })
        .withMessage('password min size 6 symbols'),
    body('password').notEmpty()
        .withMessage('Password is require')
];

const adminLoginBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('password').notEmpty()
        .withMessage('Password is require'),
];

const forgotPasswordBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('email').isEmail().normalizeEmail().withMessage('please write true email')
        .custom(async value => {
            const userModel = new UserModel();

            return userModel.checkEmailExists(value).then(has => {
                if(!has) throw new Error('Email is not exists');
            });
        }),
];

const recoverPasswordBody = [
    body('password').isLength({ min: 6 })
        .withMessage('password min size 6 symbols'),
    body('password').notEmpty()
        .withMessage('Password is require'),
    body('confirm_password').notEmpty()
        .withMessage('confirm_password require'),
    body('confirm_password').custom(async (value, {req}) => {
        if(req.body.password !== value)
            throw new Error('Password dont much the confirm_password');
    })
];

module.exports = {
    loginBody,
    signUpBody,
    adminLoginBody,
    resetPasswordBody,
    updateBody,
    forgotPasswordBody,
    recoverPasswordBody
};
