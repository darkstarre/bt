# db/seeds/courses.rb

require 'faker'

courses = 100
Course.transaction do
  courses.times do |c|
    Course.create! do |course|
      course.courseName = Faker::Company.buzzword
      course.clientName = Faker::Company.name
      course.last_accessed = Faker::Date.backward
      course.modified = Faker::Date.backward
      course.created = Faker::Date.backward
    end
  end
end

