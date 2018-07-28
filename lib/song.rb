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
    #create a new song instance
    song_instance = self.new

    #save song
    song_instance.save

    #return new song that was created
    song_instance
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    song ||= self.create_by_name(name)
=begin
    if self.find_by_name(name)
      song = self.find_by_name(name)
    else
      song = self.create_by_name(name)
    end
    song
=end
  end

  def self.alphabetical

  end

end
