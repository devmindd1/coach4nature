const {randomString} = require('./stringHelper');
const {defaultStaticPath} = require('../config/defaults');
const fs = require('fs');

exports.deleteSync = (dir) => {
    fs.rmSync(defaultStaticPath + dir, { recursive: true, force: true });
};

exports.upload = async function(file, path){
    const [,ext] = file.mimetype.split('/');
    const fileName = randomString() + `.${ext}`;
    const fullPath = path + fileName;

    try {
        await file.mv(defaultStaticPath + fullPath);
    }catch (e) {
        return '';
    }

    return fullPath;
};

exports.uploadBase64 = async function(base64, path){
    const buffer = Buffer.from(base64.split(',')[1], "base64");

    const [,ext] = base64.split(';')[0].split(':')[1].split('/');
    const fileName = randomString() + `.${ext}`;
    const fullPath = path + fileName;

    await fs.writeFileSync(defaultStaticPath + fullPath, buffer);

    return fullPath;
};