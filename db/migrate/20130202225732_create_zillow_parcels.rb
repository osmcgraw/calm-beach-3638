class CreateZillowParcels < ActiveRecord::Migration
  def change
    create_table :zillow_parcels do |t|
      t.integer :zpid
      t.string :homedetails
      t.string :graphsanddata
      t.string :comparables
      t.decimal :zestimate
      t.decimal :value_range_high
      t.decimal :value_range_low
      t.references :parcel

      t.timestamps
    end
    add_index :zillow_parcels, :parcel_id
  end
end
