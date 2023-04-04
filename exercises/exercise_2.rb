require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
store_one = Store.find_by(id: 1)
store_one.update(annual_revenue: 300000)

store_two = Store.find_by(id: 2)
store_two.update(annual_revenue: 12600000)

store_three = Store.find_by(id: 3)
store_three.update(annual_revenue: 190000)

puts store_one.inspect
puts store_two.inspect
puts store_three.inspect