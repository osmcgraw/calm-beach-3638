class Gmaps < ActiveRecord::Migration
  def up
    add_column :parcels, :gmaps, :boolean
  end

  def down
    remove_column :parcels, :gmaps, :boolean
  end
end
