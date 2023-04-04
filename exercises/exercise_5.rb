require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total annual Revenue for all stores #{total_revenue}"
puts "Total Stores #{Store.count}"
puts "Average revenue for all stores #{total_revenue / Store.count}"
big_stores = Store.where("annual_revenue < ?", 1000000).count
puts "Number of stores with revenues of more that 1M: #{big_stores}"


