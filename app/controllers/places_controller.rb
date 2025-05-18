class PlacesController < ApplicationController

  def index
    # find all places rows
    @places = Place.all
  end

  def show
    # find a place
    @place = Place.find_by({"id" => params["id"]})
  
    
    @entries = Entry.where({"place_id" => @place["id"]})

  end

  def new
    # render view with new form
  end 

  def create 
    #start with a new Place
    @place = Place.new
    @place["name"] = params["name"]
    #Save Place Row
    @place.save
    #redirect user
    redirect_to "/places"
  end
end
