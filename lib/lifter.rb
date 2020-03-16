class Lifter

  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_membership
    Membership.all.select{|membership| membership.lifter == self}
  end

  def get_gym
    Gym.all.select{|gym| gym.membership.lifter == self}
  end

  def self.average_lift
    lifts = @@all.map(&:lift_total)
    lifts.sum / lifts.length
  end

  def total_memberships_cost
    lifter_memberships = Membership.all.select{|membership| membership.lifter == self}
    costs = lifter_memberships.map(&:cost)
    costs.sum
  end
  
  def sign_up(gym_name, membership_cost)
    new_membership = Membership.new(membership_cost, self)
    Gym.new(gym_name, new_membership)
  end

end
