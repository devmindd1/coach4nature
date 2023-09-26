const UsersFollowModel = require('../models/UsersFollowModel');
const {validationResult} = require('express-validator');

exports.follow = async function(req, res){
    const {following_user_id} = req.body;
    const usersFollowModel = new UsersFollowModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    await usersFollowModel.updateFollowTo(req.user.id, following_user_id);

    return res.status(200).json(res.data);
};