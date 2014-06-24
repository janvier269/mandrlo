class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :destination, index: true
      t.references :shipco, index: true
      t.decimal :air_price
      t.decimal :sea_price
      t.boolean :national
      t.boolean :other

      t.timestamps
    end
  end
end
