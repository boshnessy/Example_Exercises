# Code Given: line 2-46
# class Car
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# Use inheritance to DRY up the classes. (DRY means not repeating code 2x) Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!
# To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car “Beeeeeeep!”

class Vehicle # Car can't inherit from bike, bike can't inherit from car bc car shouldn't be able to ring bell and bike shouldn't be able to honk horn

def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end


class Car < Vehicle
  
  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end

end


bike1 = Bike.new
bike1.ring_bell
p bike1
bike1.accelerate
p bike1

car1 = Car.new
car1.honk_horn
# car1.ring_bell --> error
p car1
car1.accelerate
p car1
