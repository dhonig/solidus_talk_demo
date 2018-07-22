require_relative 'variant_type'
module Solidus
  module GraphQL
    LineItemType = ::GraphQL::ObjectType.define do
      graphql_name "LineItem"

      field :id, !types.ID

      field :variant, !VariantType do
        resolve VariantResolver::ByLineItem
      end
    end
  end
end
