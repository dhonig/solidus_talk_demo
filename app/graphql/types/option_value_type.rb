module Solidus
  module GraphQL
    OptionValueType = ::GraphQL::ObjectType.define do

      name "OptionValue"

      field :id, !types.ID
      field :type_name, !types.String
      field :name, !types.String
      field :presentation, types.String
      field :position, types.Int
    end
  end
end