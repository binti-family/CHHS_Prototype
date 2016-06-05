# Since this is just a prototype, let's simply import facilities
# In a production app, we would need to sync facilities at intervals (eg.
# nightly), updating changed facilities and deleting defunct facilities
task :import_facilities => :environment do
  ChhsApiClient.new.query(
    facility_type: :adoption_agency
  ).each do |record|
    Facility.new(
      raw_location_data: record["location"],
      facility_type: :adoption_agency,
      address: record["facility_address"],
      city: record["facility_city"],
      phone_number: record["facility_telephone_number"],
      name: record["facility_name"],
      administrator: record["facility_administrator"],
      status: record["facility_status"],
      facility_number: record["facility_number"].to_i,
      zipcode: record["facility_zip"],
      county: record["facility_county"]
    ).tap do |facility|
      if record["location"]["latitude"] && record["location"]["longitude"]
        facility.location =
          "POINT(#{record["location"]["longitude"]} #{record["location"]["latitude"]})"
      end
      facility.save!
    end
  end
end
