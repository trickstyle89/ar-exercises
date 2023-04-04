require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)
@store3 = Store.find(4)
@store4 = Store.find(5)
@store5 = Store.find(6)


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Ivan", last_name: "Chew", hourly_rate: 80)
@store3.employees.create(first_name: "Catherine", last_name: "Gillis", hourly_rate: 100)
@store4.employees.create(first_name: "Esha", last_name: "Gillis", hourly_rate: 60)
@store5.employees.create(first_name: "Zeina", last_name: "Chew", hourly_rate: 60)

employees = Employee.all

puts employees.count

employees.each do |employee|
    puts "Name: #{employee.first_name} #{employee.last_name}"
end
