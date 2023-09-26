const {validationResult} = require('express-validator');
const PostModel = require('../models/PostModel');
const PostsSourceModel = require('../models/PostsSourceModel');
const UserModel = require('../models/UserModel');
const {upload} = require('../helpers/uploadHelper');
const {postImgPath} = require('../config/defaults');

exports.insert = async function(req, res){
    const postModel = new PostModel();
    const postsSourceModel = new PostsSourceModel();
    const has_source = req.files && req.files['images'] ? 1 : 0;

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    const postId = await postModel.insert({
        user_id: req.user.id,
        has_source: has_source,
        created_timestamp_GMT0: (new Date().getTime()/1000),
        ...req.body
    });

    if(has_source)
        for(const image of req.files['images']){
            const link = await upload(image, postImgPath);

            await postsSourceModel.insert({
                post_id: postId,
                link: link
            });
        }

    return res.status(200).json(res.data);
};

exports.getById = async function(req, res){
    const {postId} = req.params;
    const postModel = new PostModel();
    const userModel = new UserModel();
    const postsSourceModel = new PostsSourceModel();

    res.data.post = await postModel.getById(postId, req.user.id);
    res.data.postUser = await userModel.getById(res.data.post?.user_id);
    if(res.data.post)
        res.data.post.source = await postsSourceModel.getByPostId(postId);

    return res.status(200).json(res.data);
};