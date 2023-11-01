const crypto = require('crypto');

exports.string2sha1 = function(string){
    return crypto.createHash('sha1').update(string).digest('hex');
};

exports.randomString = function(bytes = 20){
    return crypto.randomBytes(bytes).toString('hex');
};

exports.randomNumber = (length) => {
    let result = '';
    const characters = '0123456789';
    const charactersLength = characters.length;
    for (let i = 0; i < length; i++) {
        result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
};

exports.titleFromUrl = function(url){
    return url.replace(/^https?:\/\//, '').replaceAll('/', ' ').replaceAll('-', ' ').replaceAll('_', ' ');
};