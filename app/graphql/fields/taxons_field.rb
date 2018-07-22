module Solidus
  module GraphQL
    TaxonsField = ::GraphQL::Field.define do
      name "taxons"
      description "Taxon list"

      argument :ids, types[types.ID]

      argument :page, types.Int
      argument :per_page,   types.Int

      type types[TaxonType]

      resolve TaxonResolver::All
    end
  end
end
