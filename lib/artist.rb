<<<<<<< HEAD
=======
require "pry"

>>>>>>> fa915f8838ddf6833bf0c3d4875d2bfa835e1dda
class Artist 
  
  attr_accessor :name, :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
<<<<<<< HEAD
  def self.find(name)
    self.all.find do |existing_name| 
      existing_name.name == name
    end
  end

def self.create(name)
   new_artist = self.new(name)
     new_artist.save
     new_artist
end
  
  def self.find_or_create_by_name(name)
   self.find(name) || self.create(name)
=======
  def self.find_by_name(name)
    @@all.each do |existing_name| 
      if existing_name.name == name
        existing_name
      end
    end
end

def self.create_by_name(name)
  binding.pry
   artist = self.new(name)
     @@all << artist 
      artist
end
  
  
  def self.find_or_create_by_name(name)
    binding.pry
   if self.find_by_name(name)
     self.find_by_name(name)
    else 
     self.create_by_name(name)
     end
>>>>>>> fa915f8838ddf6833bf0c3d4875d2bfa835e1dda
  end
  
  def add_song(song)
    self.songs << song 
  end

def save
  @@all << self  
end

def print_songs
  puts @songs.collect {|artist| artist.name}
  end
  
end
