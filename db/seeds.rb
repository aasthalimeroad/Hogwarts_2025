#Run this script using : rails db:seed
SchoolClass.destroy_all
Teacher.destroy_all
Student.destroy_all
House.destroy_all
 
NUMBER_OF_HOUSES = 5

NUMBER_OF_HOUSES.times do
    house_name = Faker::Movies::HarryPotter.unique.house
    house_points = rand(333..9999)
    house = House.create(name: house_name, points: house_points)

    number_of_students = rand(10..15)
    number_of_students.times do
        house.students.create(name: Faker::Movies::HarryPotter.unique.character)
    end 

    number_of_teachers = rand(3..5)
    number_of_teachers.times do 
        house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
    end
end
    number_of_schoolClass = Teacher.all.sample(10)
      
    number_of_schoolClass.each do |teacher|
        students = Student.all.sample(4)
        students.each do |student|
            SchoolClass.create(student: student,
                               teacher: teacher,
                               class_time: Faker::Time.forward(days: 50,period: :morning)) 
        end
    end


puts "Created #{House.count} Houses."
puts "Created #{Student.count} Students."
puts "Created #{Teacher.count} Teachers."
puts "Created #{SchoolClass.count} School Classes"