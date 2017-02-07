class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :title, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true

  def next_lesson
    @current_lesson = Lesson.find(id)
    @next_lesson = Lesson.find_by_number(@current_lesson.number + 1)


  end

end
