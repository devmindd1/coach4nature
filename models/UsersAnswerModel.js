const Model = require('../core/Model');

class UsersAnswerModel extends Model{
    constructor(){ super('users_answers'); }

    async getUserAnswers(userId){
        const result = {};

        const query =`
          SELECT
            questions_answers.title AS question_answer,
            questions_answers.score,
            questions.question_type_id,
            questions.title AS question_title,
            questions.text AS question_text
          FROM users_answers
            INNER JOIN questions_answers ON users_answers.answer_id = questions_answers.id
            INNER JOIN questions ON questions_answers.question_id = questions.id
            WHERE user_id = ${userId};`;

        const answers = await this.exec(query);

        for(const answer of answers){
            if(!result[answer['question_type_id']])
                result[answer['question_type_id']] = [];

            result[answer['question_type_id']].push(answer);
        }

        return result;
    }
}

module.exports = UsersAnswerModel;