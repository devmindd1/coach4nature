const Model = require('../core/Model');

class QuestionsAnswerModel extends Model{
    constructor(){ super('questions_answers'); }

    async getByQuestionId(questionId){
        const answers = await this.t
            .select('id', 'title')
            .where({
                question_id: questionId
            });

        this.freeResult();

        return answers;
    }
}

module.exports = QuestionsAnswerModel;