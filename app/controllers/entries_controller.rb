class EntriesController < ApplicationController

    def new
      @place = Place.find_by(id: params[:place_id])

  
    end
  
    def create
      # start with a new entry
      @entry = Entry.new
  
      # assign user-entered data
      @entry["title"] = params["title"]
      @entry["description"] = params["description"]
      @entry["event_date"] = params["event_date"]

   
      # assign relationship between tables
      @entry["place_id"] = params["place_id"]
  
      # save entry row
      @entry.save
  
      # redirect user
      redirect_to "/places/#{@entry["place_id"]}"
    end
    

  
end
