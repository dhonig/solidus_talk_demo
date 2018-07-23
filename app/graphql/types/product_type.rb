module Solidus
  module GraphQL
    ProductType = ::GraphQL::ObjectType.define do
      graphql_name "Product"

      field :id, ID, null: true
      field :graphql_name, String, null: true
      field :description, String, null: true
      field :master, VariantType, null: true
      field :slug, String, null: true
      field :images, [ImageType, null: true], null: true
      field :option_types, OptionType.connection_type, null: true

      field :variants, VariantType.connection_type, null: true do
        resolve VariantResolver::ByProduct
      end

      field :option_values_by_option_type, OptionValueType.connection_type, null: true do
        resolve ProductResolver::OptionValues
      end
    end
  end
end
