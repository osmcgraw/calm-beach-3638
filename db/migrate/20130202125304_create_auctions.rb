class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :pdf_file
      t.string :html_file
      t.date :file_date
      t.date :auction_date
      t.references :file_parcel_join

      t.timestamps
    end
    add_index :auctions, :file_parcel_join_id
  end
end
