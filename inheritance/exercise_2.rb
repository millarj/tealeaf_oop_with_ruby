class Vehicle
  @@number_of_vehicles = 0

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def initialize
    @@number_of_vehicles += 1
  end

end


class MyCar < Vehicle
  
  INTERIOR_COLOR = "black" 

end

class MyTruck < Vehicle

  INTERIOR_COLOR = "brown"

end

first_car =  MyCar.new
puts "Instantiate first car."
first_truck = MyTruck.new
puts "Instaniate first truck."
second_car = MyCar.new
puts "Instantiate second car."

puts "Total number of vehicles is: #{Vehicle.total_number_of_vehicles}"


# class GoodDog
#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs   # => 0

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs   # => 2



