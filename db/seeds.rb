# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# coaches
coach = Coach.find_or_create_by!({ name: "John Doe" })

# students
student = Student.find_or_create_by!({ name: "Alice Smith", email: "alice.smith@example.com", phone_no: "123-456-7890" })
