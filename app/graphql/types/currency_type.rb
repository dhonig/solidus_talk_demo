module Solidus
  module GraphQL
    CurrencyType = ::GraphQL::ObjectType.define do
      graphql_name "Currency"

      field :iso_code, String, null: true
      field :graphql_name, String, null: true
      field :symbol, String, null: true
      field :subunit, String, null: true
    end
  end
end
