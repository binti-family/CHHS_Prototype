require "rails_helper"

feature "Viewing site en Español" do
  it "allows user to toggle back and forth between English and Spanish" do
    visit root_path

    expect(page.current_path).to eq("/")
    expect(page).to have_content("Find Stuff")
    expect(page).to have_no_content("Encontrar cosas")

    click_link "Español"

    expect(page.current_path).to eq("/es")
    expect(page).to have_no_content("Find Stuff")
    expect(page).to have_content("Encontrar cosas")

    click_link "English"

    expect(page.current_path).to eq("/")
    expect(page).to have_content("Find Stuff")
    expect(page).to have_no_content("Encontrar cosas")
  end
end
