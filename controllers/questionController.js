const {getByTypeId} = require('../services/questionTypeService');
const UsersAnswerModel = require('../models/UsersAnswerModel');

exports.getQuestionsByTypeId = async function(req, res){
    const typeId = parseInt(req.params.typeId);

    switch(typeId){
        case 1:
        case 2:
        case 3:
        case 4:
            res.data.questionType = await getByTypeId(typeId);
        break;
        case 5:
            res.data.questionType = [
                await getByTypeId(5),
                await getByTypeId(6)
            ];
        break;
    }

    return res.status(200).json(res.data);
};

exports.insertQuestionAnswer = async function(req, res){
    const {answerId} = req.body;
    const usersAnswerModel = new UsersAnswerModel();

    await usersAnswerModel.insert({
        user_id: req.user.id,
        answer_id: answerId
    });

    return res.status(200).json(res.data);
};