class SpreeTaxon
  def self.find_all(args, token)
    ids = args[:ids]
    page = args[:page] || 1
    per_page = args[:per_page] || 25
    default = { page: page, per_page: per_page }
    if ids && !ids.empty?
      taxons = JSON.parse SpreeTaxonAPI.new(token).index(default.merge({ ids: ids.join(",") }))
    else
      taxons = JSON.parse SpreeTaxonAPI.new(token).index(default)
    end
    taxons["taxons"].collect { |taxon_hash| make_taxon taxon_hash }
  end

  def self.make_taxon taxon_hash
    OpenStruct.new(taxon_hash)
  end
end