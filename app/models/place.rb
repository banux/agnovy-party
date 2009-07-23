class Place < RelaxDB::Document
  
  property :name
  property :place_type
  property :visit
  property :address
  property :location
  property :tags
  property :description
  property :site_url
  
  view_by :name
  view_by :visit
  
end
