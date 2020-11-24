module Types
  class QueryType < Types::BaseObject
    field :user, UserType, null: false, description: 'User type brow!'

    def user
      User.first
    end

    field :posts, [PostType], null: false, description: 'Post'

    def posts
      Post.all
    end

    field :comments, [CommentType], null: false, description: 'All posts'

    def comments
      Comment.all
    end
  end
end
