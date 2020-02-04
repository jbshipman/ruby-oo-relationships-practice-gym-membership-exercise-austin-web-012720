# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Biggness", 300)
lifter2 = Lifter.new("Tiny", 400)
lifter3 = Lifter.new("Joe", 150)

gymA = Gym.new("Silvers")
gymB = Gym.new("El Slumpy")

lifter1.sign_up(gymA, 123)
lifter2.sign_up(gymA, 200)

binding.pry

puts "Gains!"
