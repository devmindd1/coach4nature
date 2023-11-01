const {validationResult} = require('express-validator');
const QuestionTypeModel = require('../../models/QuestionTypeModel');

exports.index = async function(req, res){
    const questionTypeModel = new QuestionTypeModel();

    return res.render("admin/questions_types/index", {
        items: await questionTypeModel.getAll()
    });
};

exports.edit = async function(req, res){
    const {id} = req.params;

    const questionTypeModel = new QuestionTypeModel();

    res.data.model = await questionTypeModel.getByIdAdmin(id);
    res.data.max_score = await questionTypeModel.getQuestionTypeMaxScore(id);

    if(req.method === 'GET')
        return res.render("admin/questions_types/edit", res.data);

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.data.errors =  errors.mapped();
        res.data.model = req.body;

        return res.render('admin/questions_types/edit', res.data);
    }

    const mediumRanges = req.body.medium_range.split('-');
    await questionTypeModel.update(id, {
        medium_range_start: mediumRanges[0],
        medium_range_end: mediumRanges[1],
        low_push_days: req.body.low_push_days,
        medium_push_days: req.body.medium_push_days,
        high_push_days: req.body.high_push_days,
    });

    return res.redirect(`/admin/quizzes`);
};