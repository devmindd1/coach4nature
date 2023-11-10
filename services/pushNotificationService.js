const admin = require('firebase-admin');
const serviceAccount = require('../config/coach4nature-firebase-adminsdk-c9l41-c47064f2f5.json');
const {databaseURL, options} = require('../config/firebase');

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    databaseURL: databaseURL
});

exports.push = function(deviceToken, title, body){
    admin.messaging().sendToDevice(deviceToken, {
        notification: {
            title: title,
            body: body
        }
    }, options);
};