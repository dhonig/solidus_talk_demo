module  Types
  class QueryType < ::Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    graphql_name 'Query'

     field :products, ::Types::Productsfield, null:true
    # field :taxons, Solidus::GraphQL::TaxonsField
    # field :products, Solidus::GraphQL::ProductsField
    # field :taxonomies, Solidus::GraphQL::TaxonomiesField
    # field :option_types, Solidus::GraphQL::OptionTypeField
  end
end


