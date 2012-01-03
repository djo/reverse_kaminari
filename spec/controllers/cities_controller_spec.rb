require 'spec_helper'

describe CitiesController do
  
  describe "#index" do
    it "prepares the city list" do
      cities = (1..3).map{ |i| City.create!(:name => "city ##{i}") }
      get :index
      assigns(:cities).should eq(cities.reverse)
    end
  end

end
