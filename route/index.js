const router = new (require('express').Router)();
const authMiddleware = require('../middlewares/authMiddleware');
const recoverPasswordMiddleware = require('../middlewares/recoverPasswordMiddleware');

const {postInsertBody} = require('../models/bodyValidation/postBody');
const {postLikeUpdateBody} = require('../models/bodyValidation/postsLikeBody');
const {usersFollowUpdateBody} = require('../models/bodyValidation/usersFollowBody');
const {
    signUpBody,
    loginBody,
    forgotPasswordBody,
    recoverPasswordBody,
    resetPasswordBody,
    updateBody
} = require('../models/bodyValidation/userBody');

// const {negotiationInsertBody} = require('../models/bodyValidation/negotiationBody');
// const {
//     negotiationUserInsertBody,
//     negotiationUserUpdateBody,
//     negotiationUserJoinBody
// } = require('../models/bodyValidation/negotiationUserBody');

const auth = require('../controllers/authController');
const user = require('../controllers/userController');
const index = require('../controllers/indexController');
const question = require('../controllers/questionController');
const post = require('../controllers/postController');
const postsLike = require('../controllers/postsLikeController');
const usersFollow = require('../controllers/usersFollowController');
const search = require('../controllers/searchController');
const country = require('../controllers/countryController');
// const country = require('../controllers/countryController');
// const scenario = require('../controllers/scenarioController');
// const negotiation = require('../controllers/negotiationController');
// const scenarioRole = require('../controllers/scenarioRoleController');
// const negotiationUser = require('../controllers/negotiationUserController');

router.get('/test', auth.test111);
router.get('/countries', country.list);



///////////////////////////////////////////////////////////////////////////////////////////
router.post('/login', [loginBody], auth.login);
router.post('/sign-up', [signUpBody], auth.signUp);

router.put('/auth-refresh', auth.refresh);
router.post('/forgot-password', [forgotPasswordBody], auth.forgotPassword);
router.post('/recover-password-validate/:forgotPasswordCode', [recoverPasswordMiddleware], auth.recoverPasswordValidate);
router.post('/recover-password/:forgotPasswordCode', [recoverPasswordMiddleware, recoverPasswordBody], auth.recoverPassword);


//todo authmidlware to all('*'); without login sign in
router.put('/logout', [authMiddleware], auth.logout);
router.get('/connect', [authMiddleware], auth.connect);
router.get('/get-questions/:typeId', [authMiddleware], question.getQuestionsByTypeId);
router.post('/questions-answer', [authMiddleware], question.insertQuestionAnswer);

router.post('/posts', [authMiddleware, postInsertBody], post.insert);
router.get('/posts/:postId', [authMiddleware, postInsertBody], post.getById);

router.put('/posts-like', [authMiddleware, postLikeUpdateBody], postsLike.like);

router.put('/users-follow', [authMiddleware, usersFollowUpdateBody], usersFollow.follow);

router.get('/home', [authMiddleware], index.home);

router.get('/search', [authMiddleware], search.search);

router.get('/users/profile', [authMiddleware], user.profile);
router.put('/users/reset-password', [authMiddleware, resetPasswordBody], user.resetPassword);
router.put('/users', [authMiddleware, updateBody], user.update);


module.exports = router;