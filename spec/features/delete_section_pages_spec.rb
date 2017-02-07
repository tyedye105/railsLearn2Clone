require 'rails_helper'

describe 'shows the process of deleting a section' do
  it 'deletes section' do
    section = Section.create(:name => "Ruby")
    visit section_path(section)
    click_link "Delete Section"
    expect(page).to have_content("Sections")
  end
end
