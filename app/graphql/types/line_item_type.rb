require_relative 'variant_type'
module Solidus
  module GraphQL
    LineItemType = ::GraphQL::ObjectType.define do
      graphql_graphql_name "LineItem"

      field :id, ID, null: false

      field :variant, VariantType, null: false do
        resolve VariantResolver::ByLineItem
      end
    end
  end
end
