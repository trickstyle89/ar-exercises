require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
    validates :store, presence: true
    validates :first_name, length: {minimum: 3}
    validates :annual_revenue, presence: true
    validate :must_carry_apparel

    def must_carry_apparel
        if !mens_apparel? && !womens_apparel?
            errors.add(:mens_apparel, "must carry at least one line of apparel")
    end
  end
end

puts "Enter a store name:"
store_name = gets.chomp

store = Store.create(name: store_name)

if store.save
    employee = store.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)

if store.errors.any?
puts "Failed to save store:"
store.errors.full_messages.each do |message|
  puts "- #{message}"
end

else
    puts "Employee saved successfully!"
  end

else
  puts "Failed to save store:"
  store.errors.full_messages.each do |message|
    puts "- #{message}"

    end
  end
  
  

