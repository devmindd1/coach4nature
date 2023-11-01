const Model = require('../core/Model');
const _ROLES = {
    'admin': 'admin',
    'user': 'user'
};

class UserModel extends Model{
    constructor(){ super('users'); }

    async getById(id = 0){
        const [user] = await this.t
            .select('users.id', 'users.name', 'email', 'password', 'img', 'last_active_timestamp', 'state',
                'phone', 'country_id', 'gender_id', 'countries.name AS country_name')
            .leftJoin('countries', 'users.country_id', 'countries.id')
            .where({'users.id': id});

        this.freeResult();

        return user;
    }

    async getPostUser(postUserId = 0, reqUserId){
        const query =`
          SELECT 
            users.id,
            users.name,
            users.email,
            users.img,
            users.last_active_timestamp,
            users.state,
            users.phone,
            users.gender_id,
            countries.name AS country_name,
            IF (f_users_follows.following_user_id IS NULL, 0, 1) AS i_am_follower
          FROM
            users
          LEFT JOIN countries ON users.country_id = countries.id
          LEFT JOIN(
            SELECT following_user_id FROM users_follows WHERE user_id = ${reqUserId} AND following_user_id = ${postUserId}
          )AS f_users_follows ON users.id = f_users_follows.following_user_id
          WHERE
            users.id = ${postUserId}`;

        return this.exec(query);
    }


    async checkEmailExists(email){
        const [user] = await this.t.select('email').where({
            email: email,
            role: _ROLES['user']
        });

        if(user) return true;
    }

    async getByForgotPasswordCode(forgotPasswordCode, email){
        const [user] = await this.t.select('id').where({
            forgot_password_code: forgotPasswordCode,
            email: email,
            role: _ROLES['user']
        });

        return user;
    }

    async getByEmail(email){
        const [user] = await this.t
            .select('id', 'name', 'email', 'password', 'img', 'phone', 'state', 'country_id', 'gender_id')
            .where({
                email: email,
                role: _ROLES['user']
            });

        return user;
    }

    updateByEmail(email, data){
        return this.t.update(data).where({email: email});
    }

    getByNameSearch(user_id, keyword){
        const query =`
          SELECT
            users.id,
            users.last_active_timestamp,
            IF (users_follows.id IS NULL, 0, 1) AS i_am_follower,
            name,
            email,
            role,
            IFNULL(f_users_follows.followers_count,0) AS followers_count
          FROM users
          LEFT JOIN users_follows ON users.id = users_follows.following_user_id AND users_follows.user_id = ${user_id}
          LEFT JOIN (
            SELECT COUNT(*) AS followers_count, following_user_id 
            FROM users_follows
            GROUP BY following_user_id
          ) AS f_users_follows ON users.id = f_users_follows.following_user_id
          WHERE users.id != ${user_id}
            AND users.role = '${_ROLES['user']}'
            AND users.name LIKE '%${keyword}%'`;

        return this.exec(query);
    }
}

module.exports = UserModel;