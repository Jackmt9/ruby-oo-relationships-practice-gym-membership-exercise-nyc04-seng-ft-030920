class Membership
  attr_reader :cost, :lifter
  @@all = []

  def initialize(cost, lifter)
    @cost = cost
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all
  end

end
