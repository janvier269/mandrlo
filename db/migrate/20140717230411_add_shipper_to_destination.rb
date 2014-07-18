class AddShipperToDestination < ActiveRecord::Migration
  def change
    add_reference :destinations, :shipper, index: true
  end
end
