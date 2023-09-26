const Model = require('../core/Model');

class PostModel extends Model{
    constructor(){ super('posts'); }

    async getForHome(user_id){
        const query =`
          SELECT
            posts.id,
            posts.user_id,
            posts.title,
            posts.text,
            posts.has_source,
            posts.created_timestamp_GMT0,
            IF (f_posts_likes.likes_count IS NULL, 0, f_posts_likes.likes_count) AS likes_count,
            IF (posts_likes.user_id IS NULL, 0, 1) AS i_am_like
          FROM posts
          LEFT JOIN users_follows ON users_follows.following_user_id = posts.user_id
          LEFT JOIN (
              SELECT post_id, COUNT(*) AS likes_count
              FROM posts_likes
              GROUP BY post_id
            ) AS f_posts_likes ON posts.id = f_posts_likes.post_id
          LEFT JOIN posts_likes ON posts.id = posts_likes.post_id AND posts_likes.user_id = ${user_id}
          WHERE users_follows.user_id = ${user_id}
          OR posts.user_id = ${user_id}
          GROUP BY posts.id
          ORDER BY created_timestamp_GMT0`;

        return this.exec(query);
    }


    async searchByKeyword(keyword){
        const query =`
          SELECT
            posts.id,
            posts.user_id,
            posts.title,
            posts.text,
            posts.has_source,
            posts.created_timestamp_GMT0
          FROM posts
          WHERE (MATCH (title, text) AGAINST ('+${keyword}*' IN BOOLEAN MODE ))
          ORDER BY created_timestamp_GMT0`;

        return this.exec(query);
    }

    async getById(id, user_id){
        const query =`
          SELECT
            f_posts.id,
            f_posts.user_id,
            f_posts.title,
            f_posts.text,
            f_posts.has_source,
            f_posts.created_timestamp_GMT0,
            IF (f_posts_likes.likes_count IS NULL, 0, f_posts_likes.likes_count) AS likes_count,
            IF (posts_likes.user_id IS NULL, 0, 1) AS i_am_like
          FROM (
            SELECT * 
            FROM posts 
            WHERE id = ${id} 
          ) AS f_posts
          LEFT JOIN (
            SELECT post_id, COUNT(*) AS likes_count
            FROM posts_likes
            WHERE post_id = ${id}
            GROUP BY post_id
          ) AS f_posts_likes ON f_posts.id = f_posts_likes.post_id
          LEFT JOIN posts_likes ON f_posts.id = posts_likes.post_id AND posts_likes.user_id = ${user_id}`;

        const [post] = await this.exec(query);

        return post;
    }

    getPostsByUserId(userId){
        return this.t
            .select('title', 'text', 'has_source', 'created_timestamp_GMT0')
            .where({user_id: userId});
    }
}

module.exports = PostModel;