require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# known issues:
# 1. was able to call cult#recuit_follower with a string in place of a follower -- nothing broke, but now we've got inconsistent data
# 1.5 same is true for join_cult



cult1 = Cult.new("Natalie's Cult", "Moscow", 1984, "In USSR We Trust")
cult2 = Cult.new("Cult of James", "Manhattan", 1982, "All Paradoxes Are True")
cult3 = Cult.new("Flatiron School", "Manhattan", 2012, "Learn Love Code")

follower1 = Follower.new("Tony", 29, "I love basketball")
follower2 = Follower.new("Sean C", 24, "Hey hey!")
follower3 = Follower.new("Gabbie", 31, "I love coding")

bloodoath1 = BloodOath.new("2018-10-31", cult1, follower1)
bloodoath2 = BloodOath.new("2018-10-31", cult3, follower3)
bloodoath3 = BloodOath.new("2019-01-10", cult2, follower2)
bloodoath4 = BloodOath.new("2017-10-31", cult2, follower1)
bloodoath5 = BloodOath.new("2016-10-31", cult3, follower1)
bloodoath6 = BloodOath.new("2015-10-31", cult1, follower2)
bloodoath7 = BloodOath.new("2015-10-31", cult3, follower2)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
