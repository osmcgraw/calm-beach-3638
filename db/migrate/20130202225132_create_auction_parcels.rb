class CreateAuctionParcels < ActiveRecord::Migration
  def change
    create_table :auction_parcels do |t|
      t.references :auction
      t.references :parcel

      t.timestamps
    end
    add_index :auction_parcels, :auction_id
    add_index :auction_parcels, :parcel_id
  end
end
