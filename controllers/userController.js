const PostsSourceModel = require('../models/PostsSourceModel');
const UsersFollowersModel = require('../models/UsersFollowModel');
const PostModel = require('../models/PostModel');
const {validationResult} = require('express-validator');
const UserModel = require('../models/UserModel');
const bcrypt = require('bcrypt');
const {upload, deleteSync} = require('../helpers/uploadHelper');
const {userProfileImgPath} = require('../config/defaults');

exports.resetPassword = async function(req, res){
    const userModel = new UserModel();
    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    const password = await bcrypt.hash(req.body.password, 3);
    await userModel.update(req.user.id, {
        password: password
    });

    return res.status(200).json(res.data);
};

exports.update = async function(req, res){
    let image = '';
    const userModel = new UserModel();
    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.validationErrors = errors.array();
        return res.status(400).json(res.data);
    }

    const user = await userModel.getById(req.user.id);


    console.log(req.user.id);


    console.log(req.files);

    if(req.files && req.files['img']){
        await deleteSync(user.img);

        image = await upload(req.files['img'], userProfileImgPath);

        console.log('ok');



    }

    await userModel.update(req.user.id, {
        name: req.body.name,
        gender_id: req.body.gender,
        country_id: req.body.country,
        state: req.body.state,
        img: image
    });

    return res.status(200).json(res.data);
};


exports.profile = async function(req, res){
    const postModel = new PostModel();
    const postsSourceModel = new PostsSourceModel();
    const usersFollowersModel = new UsersFollowersModel();

    res.data.followings = await usersFollowersModel.getFollowings(req.user.id);
    res.data.followingsCount = res.data.followings.length;

    res.data.followers = await usersFollowersModel.getFollowers(req.user.id);
    res.data.followersCount = res.data.followers.length;

    res.data.posts = await postModel.getPostsByUserId(req.user.id);
    res.data.postsCount = res.data.posts.length;
    res.data.postsSources = await postsSourceModel.getByPostIdsIndexed(
        res.data.posts.map(p => p.id)
    );

    return res.status(200).json(res.data);
};