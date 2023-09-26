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
}

module.exports = QuestionTypeModel;