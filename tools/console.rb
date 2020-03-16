# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
pat = Lifter.new("Patrick O'Hoolahan", 75)
membershipA = Membership.new(25, pat)
average_joes = Gym.new("Average Joe's Gym", membershipA)

pat.get_membership
pat.get_gym
Lifter.average_lift
pat.total_memberships_cost
pat.sign_up("Planet Fitness", 25)

average_joes.memberships
Gym.memberships("Planet Fitness")
average_joes.total_lift

binding.pry

puts "Gains!"
