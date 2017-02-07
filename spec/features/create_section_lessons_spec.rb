require 'rails_helper'

describe 'the flow of adding a lesson to a sectoins' do
  it 'add a lesson to a section' do
    section = Section.create(:name => "Ruby")
    visit section_path(section)
    click_link "Add Lesson"
    fill_in "Title", :with => "Intro to Ruby"
    fill_in "Content", :with => "Content ipsum"
    fill_in "Number", :with => 1
    click_on "Create Lesson"
    expect(page).to have_content("Here are the lessons")
  end
end
