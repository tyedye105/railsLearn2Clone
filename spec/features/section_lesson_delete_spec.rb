require 'rails_helper'

describe 'shows the process of deleting a lesson from a section' do
  it 'deletes a lesson from a section' do
    section = Section.create(:name => "Ruby")
    lesson = Lesson.create(:title => "Intro", :content =>"content", :number => 1, :section_id => section.id)
    visit section_path(section)
    click_link "Delete"
    expect(page).to have_content("no lessons")
  end
end
