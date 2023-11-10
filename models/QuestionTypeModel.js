const Model = require('../core/Model');

class QuestionTypeModel extends Model{
    constructor(){ super('questions_types'); }

    async getById(id){
        const [questionType] = await this.t
            .select('title', 'text', 'description', 'color_hex')
            .where({id: id});

        this.freeResult();

        return questionType;
    }

    async getByIdAdmin(id){
        const [questionType] = await this.t
            .select('*')
            .where({id: id});

        this.freeResult();

        return questionType;
    }

    async getQuestionTypeMaxScore(id){
        const query = `
          SELECT
            SUM(m_questions_answers.best_score) AS max_score
          FROM
            questions_types
              LEFT JOIN questions ON questions_types.id = questions.question_type_id
              LEFT JOIN (
              SELECT
                MAX( score ) AS best_score, question_id
              FROM
                questions_answers
              GROUP BY question_id
            ) AS m_questions_answers ON questions.id = m_questions_answers.question_id
          WHERE
            questions_types.id = ${id};`;

        const [sum] = await this.exec(query);

        return sum.max_score;
    }
}

module.exports = QuestionTypeModel;