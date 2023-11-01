const UserModel = require('../models/UserModel');

module.exports = async function (req, res, next){
    const {forgotPasswordCode} = req.params;
    const {email} = req.body;
    const userModel = new UserModel();

    try {
        const user = await userModel.getByForgotPasswordCode(forgotPasswordCode, email);

        console.log(user);

        if(!user)
            return res.status(403).json();


        console.log(req.user);

        req.user = user;

        next();
    }catch (e) {
        return res.status(403).json();
    }
};