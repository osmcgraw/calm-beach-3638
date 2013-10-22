class Auction < ActiveRecord::Base
  has_many :parcels
  attr_accessible :auction_date, :file_date, :auction_html_uploader, :auction_pdf_uploader, :id
  
  mount_uploader :auction_pdf_uploader, AuctionPdfUploader
  mount_uploader :auction_html_uploader, AuctionHtmlUploader
  

  
    
end
