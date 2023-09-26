const Model = require('../core/Model');

class QuestionModel extends Model{
    constructor(){ super('questions'); }

    getByQuestionType(questionTypeId){
        return this.t
            .select('id', 'title', 'text')
            .where({
                question_type_id: questionTypeId
            });
    }
}

module.exports = QuestionModel;