const UserModel = require('../models/UserModel');
const PostModel = require('../models/PostModel');

exports.search = async function(req, res){
    const {keyword} = req.query;

    const userModel = new UserModel();
    const postModel = new PostModel();

    res.data.users = await userModel.getByNameSearch(req.user.id, keyword);
    res.data.posts = await postModel.searchByKeyword(keyword);

    return res.status(200).json(res.data);
};