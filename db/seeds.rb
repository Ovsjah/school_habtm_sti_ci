# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([{first_name: 'Herbert', last_name: 'Garrison', age: 41},
                           {first_name: 'Diane', last_name: 'Choksondik', age: 40}])
students = Student.create([{first_name: 'Stan', last_name: 'Marsh', age: 10},
                           {first_name: 'Kyle', last_name: 'Broflovski', age: 10},
                           {first_name: 'Eric', last_name: 'Cartman', age: 10},
                           {first_name: 'Kenny', last_name: 'McCormick', age: 10},
                           {first_name: 'Butters', last_name: 'Stotch', age: 10}])
nurse = Nurse.create(first_name: 'Mary', last_name: 'Collum', age: 33)
teachers.each { |teacher| teacher.objects << students }
nurse.patients << [students.first(2), teachers.first]
