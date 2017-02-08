require 'rails_helper'
describe Lesson do
  it { should validate_presence_of :title}
  it { should validate_presence_of :content}
  it { should validate_presence_of :number}
  it { should belong_to :section}


  context '#next_lesson' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      test_section = Section.create({:name => "Ruby"})
      current_lesson = Lesson.create({:title => 'lesson1', :content =>'content', :number => 1, :section_id => test_section.id})
      test_lesson = Lesson.create({:title => 'lesson2', :content =>'content2', :number => 2, :section_id => test_section.id})
      expect(current_lesson.next_lesson).to eq test_lesson
    end
  end
end
