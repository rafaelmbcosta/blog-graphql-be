module Types
  class UserType < Types::BaseObject

    description 'User types'

    field :id, ID, null: false
    field :first_name, String, null: false, camelize: false
    field :last_name, String, null: false, camelize: false
    field :posts, [PostType], null: false
    field :full_name, String, null: false, camelize: false

    def posts
      Post.where(user_id: object.id)
    end
  end
end