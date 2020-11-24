class Types::CommentType < Types::BaseObject
  description 'comment'

  field :id, ID, null: false
  field :body, String, null: false
end