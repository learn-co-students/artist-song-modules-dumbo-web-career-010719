require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end


  def self.all
    @@songs
  end

  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
