const {validationResult} = require('express-validator');
const QuestionTypeModel = require('../../models/QuestionTypeModel');
const QuestionModel = require('../../models/QuestionModel');

exports.getByType = async function(req, res){
    const {questionTypeId} = req.params;

    const questionModel = new QuestionModel();

    return res.render("admin/questions/typed-index", {
        questionTypeId: questionTypeId,
        items: await questionModel.getByQuestionType(questionTypeId)
    });
};

exports.edit = async function(req, res){
    const {id, questionTypeId} = req.params;
    const questionModel = new QuestionModel();
    const questionTypeModel = new QuestionTypeModel();

    res.data.questionTypeId = questionTypeId;
    res.data.model = await questionModel.getById(id);
    res.data.questionTypes = await questionTypeModel.getAll();

    if(req.method === 'GET')
        return res.render('admin/questions/edit', res.data);

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.errors =  errors.mapped();
        res.data.model = req.body;

        return res.render('admin/questions/edit', res.data);
    }

    await questionModel.update(id, req.body);

    return res.redirect(`/admin/questions/${questionTypeId}`);
};


exports.create = async function(req, res){
    const {questionTypeId} = req.params;
    const questionTypeModel = new QuestionTypeModel();
    const questionModel = new QuestionModel();

    res.data.questionTypeId = questionTypeId;
    res.data.questionTypes = await questionTypeModel.getAll();

    if(req.method === 'GET')
        return res.render('admin/questions/create', res.data);

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.errors =  errors.mapped();
        res.data.model = req.body;

        return res.render('admin/questions/create', res.data);
    }

    await questionModel.insert(req.body);

    return res.redirect(`/admin/questions/${questionTypeId}`);
};


