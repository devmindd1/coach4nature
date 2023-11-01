const {body, check} = require("express-validator");

const postInsertBody = [
    // check('images').custom(async (value, {req}) => {
    //     const inputName = 'images';
    //
    //     if(!req.files || !req.files[inputName]) return;
    //
    //     if(!Array.isArray(req.files[inputName]))
    //         req.files[inputName] = [req.files[inputName]];
    //
    //     req.files[inputName].forEach(file => {
    //         const [type, ext] = file.mimetype.split('/');
    //
    //         if(type !== 'image')
    //             throw new Error('images only images types');
    //     });
    // }),

    body('images').custom(async (value, {req}) => {
        const inputName = 'images';

        if(!req.body['images']) return;

        req.body[inputName].forEach(file => {
            const [type, ext] = file.split(';')[0].split(':')[1].split('/');
            if(type !== 'image')
                throw new Error('images only images types');

        });
    }),

    body('title').notEmpty()
        .withMessage('title is require'),
    body('text').notEmpty()
        .withMessage('text is require'),
];


module.exports = {
    postInsertBody
};
