class LessonsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @lesson = Lesson.find(params[:section_id])
  end
  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end
  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to section_path(@lesson.section)
    else
      render :new
    end
  end
  def edit
    @lesson = Lesson.find(params[:id])
  end
  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :content, :number)
  end
end
