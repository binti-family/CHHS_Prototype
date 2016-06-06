require "rails_helper"

RSpec.describe Facility do
  context ".within_miles_of_zipcode" do
    context "no facilities exist" do
      context "valid params" do
        it "returns returns empty" do
          expect(Facility.within_miles_of_zipcode(100, 92111)).to be_empty
        end
      end
    end

    context "facilities exist in SF, Oakland, and LA" do
      let!(:lower_haight) {
        create(:facility, location: "POINT(-122.429398 37.773604)")
      }
      let!(:mission) {
        create(:facility, location: "POINT(-122.419494 37.765930)")
      }
      let!(:oakland) {
        create(:facility, location: "POINT(-122.271114 37.804364)")
      }
      let!(:los_angeles) {
        create(:facility, location: "POINT(-118.243685 34.052234)")
      }
      let!(:phoenix) {
        create(:facility, location: "POINT(-112.074 33.4484)")
      }

      context "within 5 miles of SOMA (SF)" do
        it "returns returns the SF facilities" do
          expect(
            Facility.within_miles_of_zipcode(5, 94110)
          ).to contain_exactly(lower_haight, mission)
        end
      end

      context "within 15 miles of SOMA (SF)" do
        it "returns returns the SF and Oakland facilities" do
          expect(
            Facility.within_miles_of_zipcode(15, 94110)
          ).to contain_exactly(lower_haight, mission, oakland)
        end
      end

      context "within 250 miles of SOMA (SF)" do
        it "returns returns the SF and Oakland facilities" do
          expect(
            Facility.within_miles_of_zipcode(399, 94110)
          ).to contain_exactly(lower_haight, mission, oakland, los_angeles)
        end
      end
    end
  end
end
