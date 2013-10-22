class ParcelsBelingsto < ActiveRecord::Migration
  def change
    add_column :parcels, :auction_id, :integer
    add_index :parcels, :auction_id
  end
  
end
