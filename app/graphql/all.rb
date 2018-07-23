require_relative "models/null_store"
require_relative "helpers/pricing"

# TODO: multiple files
require_relative "types/base_object"
require_relative "types/taxonomy_type"
require_relative "fields/taxonomies_field"
require_relative "resolvers/taxonomy_resolver"

require_relative "types/taxon_type"
require_relative "fields/taxons_field"
require_relative "resolvers/taxon_resolver"

require_relative "types/product_type"
require_relative "fields/products_field"
require_relative "resolvers/product_resolver"

require_relative "types/variant_type"
require_relative "resolvers/variant_resolver"


require_relative "types/image_type"
require_relative "types/attachment_type"
require_relative "types/style"

require_relative "types/price_type"
require_relative "types/currency_type"

require_relative "fields/option_type_field"
require_relative "types/option_type"
require_relative "resolvers/option_type_resolver"


require_relative "types/option_value_type"