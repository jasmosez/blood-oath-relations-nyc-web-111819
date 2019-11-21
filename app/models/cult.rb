class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    self.class.all << self
  end

  def recruit_follower(date, follower)
    # adds follower to the cult's list of followers
    # this list lives as a sub-set of the list of bloodoaths
    # so adding a new follower means creating a new bloodoath
    BloodOath.new(date, self, follower)
  end

  def cult_population
    # returns number of followers in this cult
    # go look at table of all BloodOaths and collect the ones with self as the cult
    sect = BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
    sect.length

  end

  def self.all
    # returns an array of all the cults
    @@all
  end

  def self.find_by_name(name)
    # returns cult instance where name matches input string
    # returns nil if it cannot be found
    Cult.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    # returns array of cults in that location
    Cult.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    # returns all the cults founded in that year
    Cult.all.select do |cult|
      cult.founding_year == year
    end
  end


end