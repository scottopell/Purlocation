require "purlocation/version"
require "purlocation/location.rb"

module Purlocation
  # Your code goes here...
  def self.get_location abbr
    Location.new abbr
  end
  def self.hello
    return "world"
  end
end
