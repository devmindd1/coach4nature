const QuestionTypeModel = require('../../models/QuestionTypeModel');

exports.index = async function(req, res){
    const questionTypeModel = new QuestionTypeModel();

    return res.render("admin/questions_types/index", {
        items: await questionTypeModel.getAll()
    });
};
