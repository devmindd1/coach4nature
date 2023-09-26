const router = new (require('express').Router);

// const auth = require('../controllers/admin/authController.js');
const home = require('../controllers/admin/homeController.js');
const user = require('../controllers/admin/userController.js');
const questionsType = require('../controllers/admin/questionsTypeController.js');
const question = require('../controllers/admin/questionController.js');
// const scenarioController = require('../controllers/admin/scenarioController.js');

// const adminAuthMiddleware = require('../middlewares/adminAuthMiddleware.js');

const {questionInsertBody} = require('../models/bodyValidation/questionBody.js');


// router.get('/login', auth.index);
// router.post('/login', [adminLoginBody], auth.login);

router.get('/', home.index);
router.get('/users', user.index);
router.get('/users/edit/:userId', user.view);


router.get('/quizzes', questionsType.index);

router.get('/questions/:questionTypeId', [], question.getByType);
router.all('/questions/edit/:questionTypeId/:id', [questionInsertBody], question.edit);
router.all('/questions/create/:questionTypeId', [], question.create);
// router.all('/quizzes/edit/:id', [], questionsType.edit);



// router.get('/edit', [adminAuthMiddleware], home.edit);
// router.post('/update', [adminAuthMiddleware], home.update);

// router.get('/scenarios', [adminAuthMiddleware], scenarioController.index);
// router.get('/scenarios/create', [adminAuthMiddleware], scenarioController.create);
// router.post('/scenarios/create', [adminAuthMiddleware], scenarioController.create);

// router.post('/groups/move-to-user', [adminAuthMiddleware], group.moveToUser);


module.exports = router;