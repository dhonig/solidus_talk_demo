require_relative 'line_item_type'

class OrderType < Types::BaseObject
  graphql_name "Order"

  field :id, ID, null: false

  field :line_items, [LineItemType, null: true], null: false do
    resolve LineItemResolver::ByOrder
  end

  resolve VariantResolver::ByLineItem
end