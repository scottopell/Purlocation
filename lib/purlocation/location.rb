require 'net/http'
require 'nori'
require 'pry'

class Location
  attr_accessor :name, :abbr, :lat, :long, :street_address, :city, :state, :zip
  MARKERS_URL = "http://www.purdue.edu/campus_map/xml/MarkersAll5.xml"

  def self.markers_hash
    @markers_hash ||= populate_markers
  end

  def self.populate_markers
    xml_data = Net::HTTP.get_response(URI.parse(MARKERS_URL)).body
    parser = Nori.new( :parser=> :rexml)
    @markers_hash = parser.parse(xml_data)["markers"].first[1]
  end


  def initialize abbr
    @me = self.class.markers_hash.select do |marker|
      marker["@abbreviation"] == abbr
    end.first
  end

  #def method_missing( meth, *arg, &block )
    # if the method name is a field on the hash, return that value
  #  super
  #end

  def name
    @me["@name"]
  end
end
