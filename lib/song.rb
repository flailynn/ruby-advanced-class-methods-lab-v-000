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

end
