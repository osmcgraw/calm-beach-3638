class Parcel < ActiveRecord::Base
  
  belongs_to :auction
  has_one :zillow_parcel
  attr_accessible :address, :city, :country, :latitude, :longitude, :minimum_bid, :number, :state, :zip, :auction_id
  
  def full_address
    "#{address}, #{city}, #{state}"
  end
  
  def gmaps4rails_address
    "#{address}, #{city}, #{state}"
  end
  
 geocoded_by :full_address
 
 after_validation :geocode
 
 acts_as_gmappable
end
