class Facility < ActiveRecord::Base
  enum facility_type: { adoption_agency: 0, residential_facility: 1}
end
