require 'rails_helper'

describe 'shows the process of editing a lesson' do
  it 'edits a lesson of a section' do
    section = Section.create(:name => "Ruby")
    lesson = Lesson.create(:title => "Intro", :content =>"content", :number => 1, :section_id => section.id)
    visit section_path(section)
    click_link "Edit this lesson"
    fill_in "Title", :with => "Rails"
    click_on "Update Lesson"
    expect(page).to have_content("Rails")
  end
end
