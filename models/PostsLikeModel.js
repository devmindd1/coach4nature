const Model = require('../core/Model');

class PostsLikeModel extends Model{
    constructor(){ super('posts_likes'); }

    async getPostLikeTo(userId, post_id){
        const [postLike] = await this.t
            .select('id')
            .where({
                user_id: userId,
                post_id: post_id
            });

        return postLike;
    }

    insertPostLikeTo(userId, post_id){
        return this.insert({
            user_id: userId,
            post_id: post_id,
        });
    }

    deletePostLikeById(id){
        return this.t
            .where('id', id)
            .del()
    }

    async updateLikeTo(userId, post_id) {
        const postLike = await this.getPostLikeTo(userId, post_id);
        if(postLike)
            await this.deletePostLikeById(postLike.id);
        else
            await this.insertPostLikeTo(userId, post_id);

        return true;
    }

}

module.exports = PostsLikeModel;