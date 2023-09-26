// module.exports = require('knex')({
//     client: 'mysql2',
//     connection: {
//         host : '127.0.0.1',
//         user : 'root',
//         password : '',
//         database : 'coach4nature',
//         multipleStatements: true
//     }
// });

module.exports = require('knex')({
    client: 'mysql2',
    connection: {
        host:'65.109.11.93',
        user: 'powerd',
        database: 'coach4nature',
        password: 'Powerd@2023',
        multipleStatements: true
    }
});