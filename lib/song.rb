require 'pry'
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
    new_song = self.new
    new_song.save
    new_song
  end

  def self.new_by_name(name)
    new_song = self.create
    new_song.name = name
    new_song
  end

  def self.create_by_name(name)
    new_song = self.create
    new_song.name = name
    new_song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name1)
    
    self.all.each do |song|
      if song.name == name1
        result = self.find_by_name(song.name1)
      else
        result = self.create_by_name(song.name1)
      end
      result
      binding.pry
    end

    # if self.all.include?(song.name)
    #   song = self.find_by_name(name)
    # else
    #   song = self.create_by_name(name)
    # end
    # song
  end
end
