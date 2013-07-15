class AuctionPdfMigration < ActiveRecord::Migration
  def up
    add_column("auctions", "auction_pdf_uploader", :string)
    add_column("auctions", "auction_html_uploader", :string)
  end

  def down
   remove_column("auctions", "auction_pdf_uploader")
   remove_column("auctions", "auction_html_uploader")
  end
end
