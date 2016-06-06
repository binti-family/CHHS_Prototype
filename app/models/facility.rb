class Facility < ActiveRecord::Base
  enum facility_type: { adoption_agency: 0, residential_facility: 1}

  scope :within_miles_of_zipcode, ->(num_miles, zipcode) {
    lat, lon = ZIPCODES_INDEX[zipcode.to_s].slice(:lat, :lon).values
    where(
      "ST_DWithin(Geography(facilities.location)," +
      "Geography(ST_MakePoint(#{lon}, #{lat})), #{num_miles.to_i * 1609.34})"
    )
  }
  scope :active, -> {
    where.not(status: "CLOSED")
  }
end
