module Solidus
  module GraphQL
    OptionTypeField = ::GraphQL::Field.define do
      name          "option_types"
      description   "List of all option_types"

      argument :id,   types[types.ID], default_value: []
      argument :name, types.String,    default_value: []

      type types[OptionType]

      resolve OptionTypeResolver::All
    end
  end
end