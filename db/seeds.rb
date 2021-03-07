# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([{name: 'Herbert Garrison'}, {name: 'Diane Choksondik'}])
students = Student.create([{name: 'Stan Marsh'},
                           {name: 'Kyle Broflovski'},
                           {name: 'Eric Cartman'},
                           {name: 'Kenny McCormick'},
                           {name: 'Butters Stotch'}])
nurse = Nurse.create(name: 'Mary Collum')
teachers.each { |teacher| teacher.objects << students }
nurse.patients << [students.first(2), teachers.first]
