require 'rails_helper'


describe 'edit/update process for sections' do
  it "shows the section edit/update process" do
    section = Section.create(:name => "Ruby")
    visit section_path(section)
    click_link "Edit Section"
    fill_in "Name", :with => "Javascript"
    click_on "Update Section"
    expect(page).to have_content("Javascript")
  end
end
