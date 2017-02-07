require 'rails_helper'

describe "the creeate section process" do
  it "adds section" do
    visit sections_path
    click_link "Create A new section"
    fill_in "Name", :with => "Ruby"
    click_on "Create Section"
    expect(page).to have_content("Sections")
  end

  it "shows section detail" do
    section = Section.create(:name => "Ruby")
    visit sections_path()
    click_link "Ruby"
    expect(page).to have_content("no lessons")
  end
end
