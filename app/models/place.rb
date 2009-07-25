include Geokit::Geocoders

class Place < RelaxDB::Document
  
  property :name
  property :place_type
  property :visit
  property :address
  property :location
  property :tags
  property :description
  property :site_url
  property :phone
  property :open_hours
  property :price_range
  property :item_type
  property :number_seat
  
  view_by :name
  view_by :visit

  def to_param
    return id
  end

  def get_geoloc
    res = MultiGeocoder.geocode(self.address)
    return res.ll.split(',')
  end

  def to_kml(overlay)

  description = ""
  if self.description
     description += "<p><b>description</b>: " + self.description + "</p>"
  end
  if self.price_range
     description += "<p><b>prix</b>: " + self.price_range + "</p>"  
  end

  if self.site_url
    description += "<p><b>url</b>: <a href='" + self.site_url + "'>" + self.site_url "</a></p>"
  end

  overlay.placemark!(
    :name        => self.name,
    :description => description,
    :location    => {:lng => self.location[1], :lat => self.location[0]}
    :icon	 => "";
  )
  end
 
end
