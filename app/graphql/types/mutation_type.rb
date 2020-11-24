module Types
  class MutationType < Types::BaseObject
    field :create_user, UserType, null: true, description: 'Creates an User' do
      argument :first_name, String, required: false, camelize: false
      argument :last_name, String, required: false, camelize: false
    end

    def create_user(first_name:, last_name:)
      User.create first_name: first_name, last_name: last_name
    end
  end
end
