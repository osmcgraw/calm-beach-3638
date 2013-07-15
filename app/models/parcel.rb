class Parcel < ActiveRecord::Base
  
  has_many :auction_parcels
  has_one :zillow_parcel
  attr_accessible :address, :city, :country, :latitude, :longitude, :minimum_bid, :number, :state, :zip
  
  def full_address
    "#{address}, #{city}, #{state}"
  end
  
  def gmaps4rails_address
    "#{address}, #{city}, #{state}"
  end
  
  geocoded_by :full_address
 
#  after_validation :geocode

  acts_as_gmappable
end
