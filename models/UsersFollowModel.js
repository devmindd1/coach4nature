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