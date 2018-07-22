module Solidus
  module GraphQL
    ProductType = ::GraphQL::ObjectType.define do
      name "Product"

      field :id,          types.ID
      field :name,        types.String
      field :description, types.String
      field :master,      VariantType
      field :slug,        types.String
      field :images,      types[ImageType]
      field :option_types, OptionType.connection_type


      field :variants, VariantType.connection_type do
        resolve VariantResolver::ByProduct
      end


      field :option_values_by_option_type, OptionValueType.connection_type do
        resolve ProductResolver::OptionValues
      end




    end
  end
end
