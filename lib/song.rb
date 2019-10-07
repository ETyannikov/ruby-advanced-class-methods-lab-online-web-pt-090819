class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    s = Song.new
    s.save
    s
  end
  
  def self.new_by_name(name)
    s = Song.new
    s.name(name)
    s
  end
  
  def self.create_by_name(name)
    s = Song.new
    s.name(name)
    s.save
    s
  end
  
  def 

end