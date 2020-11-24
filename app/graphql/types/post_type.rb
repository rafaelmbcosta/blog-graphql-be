module Types
  class PostType < Types::BaseObject
    description 'Post'

    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :comments, [CommentType], null: false

    def comments
      Comment.where(id: object.id)
    end
  end
end