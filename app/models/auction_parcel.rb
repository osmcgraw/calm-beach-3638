class AuctionParcel < ActiveRecord::Base
  belongs_to :auction
  belongs_to :parcel
  # attr_accessible :title, :body
end
