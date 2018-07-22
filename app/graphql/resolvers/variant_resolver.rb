module Solidus
  module GraphQL
    class VariantResolver
      class ByProduct
        def self.call(product, args, ctx)
          # TODO: query(args)
          product.variants.to_a
        end
      end


       class Images
         def self.call(product,args,ctx)
           product.variants
         end

       end
    end
  end
end
