require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end
end
