module Solidus
  module GraphQL
    class Attachment < ::GraphQL::Schema::Object
    graphql_name "Attachment"

      field :id, ID, null: false
      field :url, String, null: false
      field :default_url, String, null: false
      field :default_style,String, null: false
      field :path, String, null: false

      # field :styles, Style.connection_type  do
      #     resolve ->(attachment,args,ctx){
      #       values=[]
      #       attachment.styles.each do |key, array|
      #         array.each do |value|
      #           record=OpenStruct.new(value.attributes)
      #           record.style_graphql_name=key[:graphql_name]
      #           values<<record
      #         end
      #       end
      #       values
      #     }
      # end

    end
  end
end

