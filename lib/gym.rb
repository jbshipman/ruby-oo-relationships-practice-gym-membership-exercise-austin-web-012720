class Gym
  attr_reader :name, :lifter_name, :lift_total

  @@all = []
  def self.all
    @@all 
  end 

  def initialize(name)
    @name = name

    @@all << self
  end

  def all_our_memberships
    Membership.all.select {|mb| mb.gym == self}
  end 

  def all_our_lifters
    all_our_memberships.map {|lifters| lifters.lifter_name.lifter_name}
  end

  def our_lift_totals
    all_our_memberships.map.sum {|total| total.lifter_name.lift_total}
  end 

end
