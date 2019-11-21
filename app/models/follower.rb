class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age 
    @life_motto = life_motto
    self.class.all << self
  end


  def cults
    #returns an array of this follower's cults
    # search through bloodoaths
    BloodOath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end

  def join_cult(date, cult)
    # adds this follower to the cult's list of followers. NB: might live in BloodOath class.
    BloodOath.new(date, cult, self)

  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    # returns an array of followers who are >= to that age
    @@all.select do |follower|
      follower.age >= age
    end
  end

end