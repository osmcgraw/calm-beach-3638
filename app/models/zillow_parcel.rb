class ZillowParcel < ActiveRecord::Base
  belongs_to :parcel
  attr_accessible :comparables, :graphsanddata, :homedetails, :value_range_high, :value_range_low, :zestimate, :zpid
end
