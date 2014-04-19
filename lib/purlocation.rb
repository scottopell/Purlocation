require "purlocation/version"
require "purlocation/location.rb"

module Purlocation
  def self.get_location abbr
    Location.new abbr
  end
end
