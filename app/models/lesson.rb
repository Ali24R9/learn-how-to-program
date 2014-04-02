class Lesson < ActiveRecord::Base
  validates :name, :presence => true

  def next_lesson
    sorted = Lesson.order(lesson_number: :asc)
    sorted.detect { |i| i.lesson_number > self.lesson_number }
  end

  def previous_lesson
    sorted = Lesson.order(lesson_number: :desc)
    sorted.detect { |i| i.lesson_number < self.lesson_number }
  end
end
