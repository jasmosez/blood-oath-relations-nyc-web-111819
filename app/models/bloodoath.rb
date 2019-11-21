class BloodOath
  attr_accessor :initiation_date, :cult, :follower

  @@all = []

  def initialize(date, cult, follower) #check the specific date format
    @initiation_date = date
    @cult = cult
    @follower = follower unless follower.class != Follower

    self.class.all << self
  end

  def self.all
    @@all
  end

end