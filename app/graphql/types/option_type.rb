module Solidus
  module GraphQL
    OptionType = ::GraphQL::ObjectType.define do
      graphql_name "OptionType"

      field :id, ID, null: false
      field :graphql_name, String, null: false
      field :presentation, String, null: true
      field :position, Integer, null: true
    end
  end
end