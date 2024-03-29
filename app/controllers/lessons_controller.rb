class LessonsController < ApplicationController

  def index
    @section = Section.all
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new

    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])

    if @lesson.save
      @lessons = Lesson.all
      redirect_to '/lessons'
    else
      render('lessons/index.html.erb')
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson= Lesson.find(params[:id])
    @lesson.update(params[:lesson])

    if @lesson.update(params[:lesson])
      redirect_to "/lessons/#{@lesson.id}"
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to '/lessons'
  end
end


