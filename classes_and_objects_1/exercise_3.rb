
class MyCar
  attr_accessor :color
  attr_reader :year


  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
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
    self.color = color
  end


end

puts "What is the year of your car?"
year = gets.chomp

puts "What is the color of your car?"
color = gets.chomp

puts "What is the model name of your car?"
model = gets.chomp

car = MyCar.new(year, color, model)

puts "Year: #{year} Model: #{model} Color: #{color}"


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





