const PostsLikeModel = require('../models/PostsLikeModel');
const {validationResult} = require('express-validator');

exports.like = async function(req, res){
    const {post_id} = req.body;
    const postsLikeModel = new PostsLikeModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    await postsLikeModel.updateLikeTo(req.user.id, post_id);

    return res.status(200).json(res.data);
};