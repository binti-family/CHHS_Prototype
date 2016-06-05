require "rails_helper"

RSpec.describe "Facilities queries" do
  context "Valid queries" do
    context "Adoption agencies Within 5 miles of 94117" do
      it "returns the correct results" do
        get "/api/facilities", zipcode: 94117, within: 5,
          facility_type: :adoption_agency

        expect(response).to be_success
      end
    end
  end
end
