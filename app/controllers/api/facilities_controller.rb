class Api::FacilitiesController < ApplicationController
  def index
    scope = case params[:facility_type]
    when "adoption_agency"
      Facility.adoption_agency
    when "residential_facility"
      Facility.residential_facility
    else
      Facility.all
    end

    if params[:zipcode] && params[:within]
      scope = scope.within_miles_of_zipcode(params[:within], params[:zipcode])
    end

    render json: scope, zipcode: params[:zipcode]
  end
end
