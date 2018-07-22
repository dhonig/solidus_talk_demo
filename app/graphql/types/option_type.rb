module Solidus
  module GraphQL
    OptionType = ::GraphQL::ObjectType.define do

      name "OptionType"

      field :id, !types.ID
      field :name, !types.String
      field :presentation, types.String
      field :position, types.Int
    end
  end
end