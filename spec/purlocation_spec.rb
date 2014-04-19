require 'spec_helper'

describe Purlocation do
  it "returns Beering's full name" do
    location = Purlocation.get_location "BRNG"
    location.name.should eq("Beering Hall of Liberal Arts and Education")
  end

  it "passes this simple test" do
    Purlocation.hello.should eq("world")
  end
end
