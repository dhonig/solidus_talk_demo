module Solidus
  module GraphQL

    ImageType = ::GraphQL::ObjectType.define do
      name "Image"
      field :attachment, Attachment
    end
  end
end