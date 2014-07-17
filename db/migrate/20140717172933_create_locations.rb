class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :area
      t.string :address
      t.string :keyword
      t.float :latitude
      t.float :longitude
      t.string :mapid

      t.timestamps
    end
  end
end
