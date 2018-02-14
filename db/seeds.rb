require('pry')

require_relative('../models/student.rb')

Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 8
  })

student2 = Student.new({
  "first_name" => "Ron",
  "second_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 8
  })

student1.save()
student2.save()

binding.pry
nil
