class Lifter
  attr_reader :lifter_name, :lift_total
  @@all = []
  def self.all
    @@all
  end 

  def initialize(lifter_name, lift_total)
    @lifter_name = lifter_name
    @lift_total = lift_total.to_i
    # @membership = membership

    @@all << self
  end

  def sign_up(gym, cost)
    # Membership.new(self, gym, cost)
    # membership.lifter = self
    # self.gym = gym
    # gym.lifter = self
    new = Membership.new(gym, cost, self)
  end  

  def my_memberships
    Membership.all.select {|mb| mb.lifter_name == self}
  end 

  def my_gyms
    my_memberships.map {|g| g.gym}
  end

  def self.avg_lift
    # total = self.all {|w| w.lift_total}.sum
    # count = self.all {|y| y.lift_total}.size
    # total / count
    self.all.sum {|w| w.lift_total} / self.all.size {|y| y.lift_total}
  end 

  def member_cost
    my_memberships.map.sum {|cost| cost.cost}
  end 

end
