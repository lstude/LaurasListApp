class ListingsController < ApplicationController
  
  def update
    listing_id = params[:id]
    @listing = Listing.find_by_id(listing_id)
    @listing.price = params[:price]
    @listing.item = params[:item]
    @listing.location = params[:location]
    @listing.save
    
    redirect_to "/home"
  end


  def edit
    listing_id = params[:id]
    @listing = Listing.find_by_id(listing_id)
  end
  
  
  def destroy
  listing_id = params[:id]
  @listings = Listing.find_by_id(listing_id)
  @listings.destroy
  
  redirect_to "/home"
  end

  def show
    listing_id = params[:id]
    @listings = Listing.find_by_id(listing_id)
  end
  
  def new
  end
  
  def create
  @listings = Listing.new
  @listings.item = params[:item]
  @listings.price = params[:price]
  @listings.location = params[:location]
  @listings.save
  
  redirect_to "/home"
  end
  
  
  def index
    @listings = Listing.all
  end
  
end