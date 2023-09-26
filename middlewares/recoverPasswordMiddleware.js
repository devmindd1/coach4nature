const UserModel = require('../models/UserModel');

module.exports = async function (req, res, next){
    const {forgotPasswordToken} = req.params;
    const userModel = new UserModel();

    try {
        const user = await userModel.getByForgotPassword(forgotPasswordToken);
        if(!user)
            return res.status(403).json();

        req.user = user;

        next();
    }catch (e) {
        return res.status(403).json();
    }
};