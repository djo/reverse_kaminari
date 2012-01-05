require 'spec_helper'

describe CitiesController do

  describe "#index" do

    before do
      City.stub(:default_per_page).and_return(2)
      @city1, @city2, @city3, @city4, @city5, @city6, @city7 = (1..7).map { |i| City.create!(:name => "city ##{i}") }
    end

    it "prepares the start page with the last 3 cities" do
      get :index
      assigns(:cities).should eq([@city7, @city6, @city5])
    end

    it "prepares the second page with 2 cities" do
      get :index, :page => '3-4'
      assigns(:cities).should eq([@city4, @city3])
    end

    it "prepares the third page with 2 cities" do
      get :index, :page => '1-2'
      assigns(:cities).should eq([@city2, @city1])
    end

  end

end
