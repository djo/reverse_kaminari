require 'spec_helper'

describe "Cities" do
  before do
    City.stub(:default_per_page).and_return(2)
    7.times { |i| City.create!(:name => "#{i + 1}th city") }
    visit '/'
  end

  it "displays the last 3 cities on the start page" do
    page.all('.city').should have(3).items
    page.should have_content '7th city'
    page.should have_content '6th city'
    page.should have_content '5th city'
  end

  it "displays 2 cities on the second page" do
    within '.pagination' do
      click_link('2')
    end

    page.all('.city').should have(2).items
    page.should have_content '4th city'
    page.should have_content '3th city'
  end

  it "displays 2 cities on the last page" do
    within '.pagination' do
      click_link('3')
    end

    page.all('.city').should have(2).items
    page.should have_content '2th city'
    page.should have_content '1th city'
  end
end
