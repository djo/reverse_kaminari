class CitiesController < ApplicationController

  def index
    @cities = City.order('created_at DESC').page(params[:page])
  end

  def create
    @city = City.new(params[:city])

    if @city.save
      flash[:notice] = "#{@city.name} city was added."
    else
      flash[:alert] = @city.errors.full_messages.join(". ")
    end

    redirect_to cities_url
  end

end
