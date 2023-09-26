const PostModel = require('../models/PostModel');
const PostsSourceModel = require('../models/PostsSourceModel');
const MailHelper = require('../helpers/MailHelper');

exports.home = async function(req, res){
    const postModel = new PostModel();
    const postsSourceModel = new PostsSourceModel();

    res.data.posts = await postModel.getForHome(req.user.id);

    res.data.postsSources = await postsSourceModel.getByPostIdsIndexed(
        res.data.posts.map(p => p.id)
    );

    return res.status(200).json(res.data);
};

exports.test = async function(req, res){


    await MailHelper.sendMail('freelancetoptalent@gmail.com', 'test subject', 'test text');


    return res.status(200).json(res.data);
};


