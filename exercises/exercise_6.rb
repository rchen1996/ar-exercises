require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(
  first_name: 'Khurram',
  last_name: 'Virani',
  hourly_rate: 60,
)

@store1.employees.create(
  first_name: 'Rebecca',
  last_name: 'Chen',
  hourly_rate: 90,
)

@store1.employees.create(
  first_name: 'Evelyn',
  last_name: 'Yoa',
  hourly_rate: 70,
)

@store2.employees.create(
  first_name: 'Brady',
  last_name: 'Blair',
  hourly_rate: 90,
)

@store2.employees.create(
  first_name: 'May',
  last_name: 'Cheong',
  hourly_rate: 30,
)
