class EntriesController < ApplicationController

    def new
      @place = Place.find_by(id: params[:place_id])

      # render contacts/new view with new Contact form
    end
  
    def create
      # start with a new Contact
      @entry = Entry.new
  
      # assign user-entered form data to Contact's columns
      @entry["title"] = params["title"]
      @entry["description"] = params["description"]
      @entry["event_date"] = params["event_date"]

   
      # assign relationship between Contact and Company
      @entry["place_id"] = params["place_id"]
  
      # save Contact row
      @entry.save
  
      # redirect user
      redirect_to "/places/#{@entry["place_id"]}"
    end
    

  
end
