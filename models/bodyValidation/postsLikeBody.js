const {body} = require("express-validator");
const PostModel = require('../../models/PostModel');

const postLikeUpdateBody = [
    body('post_id').notEmpty()
        .withMessage('post_id is require'),
    body('post_id').custom(async (value) => {
        const postsModel = new PostModel();

        return postsModel.checkById(value).then(has => {
            if(!has) throw new Error('post_id not exists');
        });
    })
];

module.exports = {
    postLikeUpdateBody
};
