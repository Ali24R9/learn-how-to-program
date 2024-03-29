require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should belong_to :section }

  describe 'next' do
    it 'should return the next lesson' do
      testlesson1 = Lesson.create({name: 'Ruby Basics', lesson_number: 101})
      testlesson2 = Lesson.create({name: 'Ruby Not basics', lesson_number: 105})
      testlesson3 = Lesson.create({name: 'Ruby Not bascicly', lesson_number: 90})
      testlesson1.next_lesson.should eq testlesson2
    end
  end

  describe 'previous' do
    it 'should return the previous lesson' do
      testlesson1 = Lesson.create({name: 'Ruby Basics', lesson_number: 101})
      testlesson2 = Lesson.create({name: 'Ruby Not basics', lesson_number: 105})
      testlesson3 = Lesson.create({name: 'Ruby Not bascicly', lesson_number: 90})
      testlesson2.previous_lesson.should eq testlesson1
    end
  end
end
