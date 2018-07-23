module Solidus
  module GraphQL
    OptionValueType = ::GraphQL::ObjectType.define do
      graphql_name "OptionValue"

      field :id, ID, null: false
      field :type_graphql_name, String, null: false
      field :graphql_name, String, null: false
      field :presentation, String, null: true
      field :position, Integer, null: true
    end
  end
end