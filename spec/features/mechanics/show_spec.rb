require 'rails_helper'

RSpec.describe "When I visit a Mechanic show page" do
  before {
    @kon = Mechanic.create!(name: "Kon", years_exp: 4 )
    @ship = @kon.rides.create!(name: "Ship", thrill_rating: 5, is_open: true)
    @kumba = @kon.rides.create!(name: "Kumba", thrill_rating: 8, is_open: true)
    @bttf = @kon.rides.create!(name: "The Future", thrill_rating: 4, is_open: false)
  }

  it "I see name, experience, rides" do
    visit "/mechanics/#{@kon.id}"

    expect(page).to have_content(@kon.name)
    expect(page).to have_content(@kon.years_exp)
    expect(page).to have_content("Kumba")
    expect(page).to have_content("Ship")
    # save_and_open_page
  end

  it "I see a form to add a ride to mechanics workload" do
    visit "/mechanics/#{@kon.id}"

    expect(page).to have_content("Add a ride to workload:")
    expect(page).to have_field("Ride id")
  end

  #   I see a form to add a ride to their workload
  # When I fill in that field with an id of an existing ride and hit submit
  # I’m taken back to that mechanic's show page
  # And I see the name of that newly added ride on this mechanics show page
end
