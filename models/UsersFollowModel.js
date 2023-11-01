const Model = require('../core/Model');

class UsersFollowModel extends Model{
    constructor(){ super('users_follows'); }

    async getFollowTo(userId, followingUserId){
        const [following] = await this.t
            .select('id')
            .where({
                user_id: userId,
                following_user_id: followingUserId
            });

        return following;
    }

    insertFollowTo(userId, followingUserId){
        return this.insert({
            user_id: userId,
            following_user_id: followingUserId,
        });
    }

    deleteUserFollowById(id){
        return this.t
            .where('id', id)
            .del()
    }

    async updateFollowTo(userId, followingUserId) {
        const following = await this.getFollowTo(userId, followingUserId);
        if(following)
            await this.deleteUserFollowById(following.id);
        else
            await this.insertFollowTo(userId, followingUserId);

        return true;
    }

    async getFollowersCount(userId){
        const [followers] = await this.t
            .count({count: '*'})
            .where('following_user_id', userId)
            .groupBy('following_user_id');

        if(followers && followers.count)
            return followers.count;

        return 0;
    }

    async getFollowers(userId){
        const query =`
          SELECT
            users.id,
            users.name,
            users.img,
            IF (f_users_follows.id IS NULL, 0, 1) AS i_am_follower,
            t_users_follows.followers_count
          FROM users_follows
          LEFT JOIN users_follows AS f_users_follows 
            ON users_follows.user_id = f_users_follows.following_user_id AND f_users_follows.user_id = ${userId} 
          LEFT JOIN users 
            ON users_follows.user_id = users.id
          LEFT JOIN (
            SELECT count(*) AS followers_count, following_user_id 
            FROM users_follows 
            GROUP BY following_user_id
          ) AS t_users_follows ON users_follows.user_id = t_users_follows.following_user_id
          WHERE users_follows.following_user_id = ${userId}`;

        return this.exec(query);
    }

    async getFollowings(userId){
        const query =`
          SELECT
            users.id,
            users.name,
            users.img,
            t_users_follows.followers_count
          FROM users_follows
          LEFT JOIN users ON users_follows.following_user_id = users.id
          LEFT JOIN (
            SELECT count(*) AS followers_count, following_user_id
            FROM users_follows
            GROUP BY following_user_id
          ) AS t_users_follows ON users_follows.following_user_id = t_users_follows.following_user_id
          WHERE users_follows.user_id = ${userId}`;

        return this.exec(query);
    }

    async getFollowingsCount(userId){
        const [followers] = await this.t
            .count({count: '*'})
            .where('user_id', userId)
            .groupBy('user_id');

        if(followers && followers.count)
            return followers.count;

        return 0;
    }
}

module.exports = UsersFollowModel;