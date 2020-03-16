class Gym
  attr_reader :name, :membership
  @@all = []

  def initialize(name, membership)
    @name = name
    @membership = membership
    @@all << self
  end

  def self.all
    @@all
  end

  def self.memberships(gym_name)
    gym = @@all.select{|gym| gym.name == gym_name}
    gym.map(&:membership)
  end

  def memberships
    @@all.map do |gym|
      gym.membership.lifter
    end
  end

  def total_lift
    memberships.map(&:lift_total).sum
  end




end
