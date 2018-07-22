class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  name 'Query'

  field :products, Solidus::GraphQL::ProductsField
  field :taxons, Solidus::GraphQL::TaxonsField
  field :products, Solidus::GraphQL::ProductsField
  field :taxonomies, Solidus::GraphQL::TaxonomiesField
  field :option_types, Solidus::GraphQL::OptionTypeField
end
