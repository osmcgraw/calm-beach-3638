class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.integer :number
      t.string :address
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude
      t.decimal :minimum_bid
      t.string :state
      t.references :zillow_parcel
      t.integer :zip

      t.timestamps
    end
    add_index :parcels, :zillow_parcel_id
  end
end
