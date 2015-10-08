module Truckable
  def calculate_bed_size(length, width)
    @area = length * width
  end
end

class Vehicle
  attr_accessor :color, :year

  @@number_of_vehicles = 0

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def to_s
    "Year: #{@year} Model: #{@model} Color: #{@color}"
  end

  def self.calculate_mileage(miles_driven, gas_used)
    (miles_driven.to_f) / (gas_used.to_f)
  end

  def speed_up(number)
    @current_speed += number
    puts "You pushed the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You pushed the brake and reduced your speed by #{number} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!" 
  end

  def current_speed
    puts "Your current speed is: #{@current_speed}"
  end

  def spray_paint(color)
    @color = color
  end
end




class MyCar < Vehicle
  
  INTERIOR_COLOR = "black" 

end

class MyTruck < Vehicle
  include Truckable

  INTERIOR_COLOR = "brown"

end

puts "What is the year of your car?"
year = gets.chomp

puts "What is the color of your car?"
color = gets.chomp

puts "What is the model name of your car?"
model = gets.chomp

car = MyCar.new(year, color, model)

puts car


car.speed_up(20)
car.current_speed

car.speed_up(30)
car.current_speed

car.brake(15)
car.current_speed

car.brake(20)
car.current_speed

puts ""
car.shut_down
puts "Car is shut down."
car.current_speed

puts ""
puts "Enter a different color for your car."
new_color = gets.chomp
car.spray_paint(new_color)
puts "The new color is: #{car.color}"
puts "The year of the the car is still: #{car.year}"


first_car =  MyCar.new("1997", "Red", "Toyota")
puts "Instantiate first car."

first_truck = MyTruck.new("2004", "White", "Chevy")
puts "Instaniate first truck."
puts "Truck bed area is: #{first_truck.calculate_bed_size(5, 10)}"

second_car = MyCar.new("1965", "Red", "Ford")
puts "Instantiate second car."

puts "Total number of vehicles is: #{Vehicle.total_number_of_vehicles}"

puts "Enter miles driven:"
miles = gets.chomp

puts "Enter gallons of gas used:"
gallons = gets.chomp

puts "Your MPG was: #{MyCar.calculate_mileage(miles, gallons).round(2)}"



# puts "------Vehicle Ancestors----------"
# puts puts Vehicle.ancestors

# puts "------MyCar Ancestors----------"
# puts puts MyCar.ancestors

# puts "------MyTruck Ancestors----------"
# puts puts MyTruck.ancestors