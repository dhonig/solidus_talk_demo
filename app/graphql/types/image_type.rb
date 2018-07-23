module Solidus
  module GraphQL

    ImageType = ::GraphQL::ObjectType.define do
      graphql_name "Image"
      field :attachment, Attachment, null: true
    end
  end
end