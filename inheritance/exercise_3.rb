class Vehicle
  @@number_of_vehicles = 0

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def initialize
    @@number_of_vehicles += 1
  end

end

module Truckable

  def calculate_bed_size(length, width)
    @area = length * width
  end
end



class MyCar < Vehicle
  
  INTERIOR_COLOR = "black" 

end

class MyTruck < Vehicle
  include Truckable

  INTERIOR_COLOR = "brown"

end

first_car =  MyCar.new
puts "Instantiate first car."

first_truck = MyTruck.new
puts "Instaniate first truck."
puts "Truck bed area is: #{first_truck.calculate_bed_size(5, 10)}"

second_car = MyCar.new
puts "Instantiate second car."

puts "Total number of vehicles is: #{Vehicle.total_number_of_vehicles}"



