class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :section
      t.string :location
      t.string :airport

      t.timestamps
    end
  end
end
