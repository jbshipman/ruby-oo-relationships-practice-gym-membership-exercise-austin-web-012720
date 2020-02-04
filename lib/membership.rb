class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter_name, :lift_total

  @@all = []
  def self.all 
    @@all 
  end 

  def initialize(gym, cost, lifter_name)
    @cost = cost
    @gym = gym
    @lifter_name = lifter_name

    @@all << self
  end
end
