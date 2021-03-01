require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@store2.employees.create(
  first_name: 'Ryan',
  last_name: 'Nguyen',
  hourly_rate: 60,
)

@employees = Employee.where(first_name: 'Ryan')

@employees.each { |employee| puts "#{employee.password}" }
