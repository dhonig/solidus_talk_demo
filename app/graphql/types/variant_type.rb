module Solidus
  module GraphQL
    VariantType = ::GraphQL::ObjectType.define do
      graphql_name "Variant"

      field :id, ID, null: true
      field :sku, String, null: true
      field :graphql_name, String, null: true
      field :weight, String, null: true
      field :height, String, null: true
      field :images, [ImageType, null: true], null: true

      field :price, PriceType, null: true

      def price
        object.product.price_for(Pricing.current_options(context))
      end

      field :product, Solidus::ProductType, null: true do
        resolve ProductResolver::ByVariant
      end
    end
  end
end
