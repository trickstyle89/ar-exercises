require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Print the count of stores with mens_apparel = true
puts "Number of stores with men's apparel: #{Store.where(mens_apparel: true).count}"

# Print the attributes of stores with mens_apparel = true
puts "Stores with men's apparel:"
Store.where(mens_apparel: true).each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

puts "Stores with women's apparel:"
Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000).each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end