require('pry')

require_relative('../models/student.rb')
require_relative('../models/house.rb')


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

house1 = House.new({
  "name" => "Gryffindor"
  })
house2 = House.new({
  "name" => "Ravenclaw"
    })
house3 = House.new({
  "name" => "Hufflepuff"
      })
house4 = House.new({
  "name" => "Slytherin"
        })

house1.save()
house2.save()
house3.save()
house4.save()

binding.pry
nil
