const UserModel = require('../../models/UserModel');
const UsersAnswerModel = require('../../models/UsersAnswerModel');

exports.index = async function(req, res){
    const userModel = new UserModel();

    return res.render("admin/users/index", {
        users: await userModel.getAll()
    });
};

exports.view = async function(req, res){
    const {userId} = req.params;
    const userModel = new UserModel();
    const usersAnswerModel = new UsersAnswerModel();

    return res.render("admin/users/view", {
        scores: 0,
        user: await userModel.getById(71),
        answers: await usersAnswerModel.getUserAnswers(71)
    });
};

