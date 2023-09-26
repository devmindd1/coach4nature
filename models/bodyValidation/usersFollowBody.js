const {body} = require("express-validator");
const UserModel = require('../../models/UserModel');

const usersFollowUpdateBody = [
    body('following_user_id').notEmpty()
        .withMessage('following_user_id is require'),
    body('following_user_id').custom(async (value) => {
        const userModel = new UserModel();

        return userModel.checkById(value).then(has => {
            if(!has) throw new Error('following_user_id not exists');
        });
    })
];

module.exports = {
    usersFollowUpdateBody
};
