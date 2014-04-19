require 'spec_helper'

describe Purlocation do
  it "gets Beering's full name" do
    location = Purlocation.get_location "BRNG"
    location.name.should eq("Beering Hall of Liberal Arts and Education")
  end

  it "gets the street address of mathews hall" do
    location = Purlocation.get_location "MTHW"
    location.streetaddress.should eq("812 W. State Street")
  end

  it "gets the phone number for shreve" do
    location = Purlocation.get_location "SHRV"
    location.phone.should eq("(765) 494-2569")
  end
end
