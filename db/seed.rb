require_relative('../models/student')
require_relative('../models/house')
require('pry')

gryffindor = House.new ({
  "name" => "Gryffindor"
  })

ravenclaw = House.new ({
  "name" => "Ravenclaw"
  })

hufflepuff = House.new ({
  "name" => "Hufflepuff"
  })

slytherin = House.new ({
  "name" => "Slytherin"
  })


  gryffindor.save
  ravenclaw.save
  hufflepuff.save
  slytherin.save

student_1 = Student.new({
  "first_name" => "David",
  "last_name" => "Hasselhoff",
  "house_id" => gryffindor.id,
  "age" => 1000
  })

student_2 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => gryffindor.id,
  "age" => 12
  })




student_1.save()
student_2.save



binding.pry
nil
