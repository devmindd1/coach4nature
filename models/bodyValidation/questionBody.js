const {body} = require("express-validator");

const questionInsertBody = [
    body('question_type_id').notEmpty()
        .withMessage('Quiz type is require')
];

module.exports = {
    questionInsertBody
};
