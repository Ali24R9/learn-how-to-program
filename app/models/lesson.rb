class Lesson < ActiveRecord::Base
  validates :name, :presence => true

  def next_lesson
    sorted = Lesson.all.sort_by &:lesson_number
    self.id
  end
end
