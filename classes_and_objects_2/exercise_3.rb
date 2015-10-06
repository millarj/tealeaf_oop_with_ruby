class Person
  attr_accessor :name       # This is corrected to att_accessor in order for line 9 (and line 10) to wokrk properly. 
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob.name