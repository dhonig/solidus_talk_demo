module Solidus
  module GraphQL
    VariantType = ::GraphQL::ObjectType.define do
      name "Variant"

      field :id,   types.ID
      field :sku,  types.String
      field :name, types.String
      field :weight,  types.String
      field :height,  types.String
      field :images, types[ImageType]




      field :price, PriceType do
        resolve ->(variant, args, ctx) do
          variant.product.price_for(Pricing.current_options(ctx))
        end
      end

      field :product, ProductType do
        resolve ProductResolver::ByVariant
      end




    end
  end
end
