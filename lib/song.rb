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
    s.name = name
    s
  end
  
  def self.create_by_name(name)
    s = Song.new
    s.name = name
    s.save
    s
  end
  
  def self.find_by_name(n)
    self.all.find{|song| song.name == n}
  end

  def self.find_or_create_by_name(n)
    s = self.find_by_name(n)
    s ? s : self.create_by_name(n)
  end
  
  def self.alphabetical
    self.all.sort_by{|a| a.name}
  end

  def self.new_from_filename(n)
    n.split(" - ")
  end
end