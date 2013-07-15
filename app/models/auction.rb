class Auction < ActiveRecord::Base
  has_many :auction_parcels
  attr_accessible :auction_date, :file_date, :auction_html_uploader, :auction_pdf_uploader
  
  mount_uploader :auction_pdf_uploader, AuctionPdfUploader
  mount_uploader :auction_html_uploader, AuctionHtmlUploader
end
