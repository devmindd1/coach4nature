const Model = require('../core/Model');

class PostsSourceModel extends Model{
    constructor(){ super('posts_sources'); }

    async getByPostIdsIndexed(inIds){
        const postsSources = {};

        const sources = await this.t
            .select('post_id', 'link')
            .whereIn('post_id', inIds);

        sources.forEach(source => {
            if(!postsSources[source.post_id])
                postsSources[source.post_id] = [];

            postsSources[source.post_id].push(source.link);
        });

        return postsSources;
    }

    getByPostId(postId){
        return this.t
            .select('post_id', 'link')
            .where('post_id', postId);
    }
}

module.exports = PostsSourceModel;