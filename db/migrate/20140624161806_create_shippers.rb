class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :shipco
      t.string :addr1
      t.string :add2
      t.string :city
      t.integer :zip
      t.string :area
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.references :services, index: true
      t.boolean :oth_aes
      t.boolean :oth_ins
      t.boolean :oth_brok
      t.string :oth_impo
      t.boolean :inventory
      t.boolean :oth_pur
      t.boolean :oth_repa
      t.boolean :oth_ware
      t.boolean :pay_cash
      t.boolean :pay_chk
      t.boolean :pay_debCrd
      t.boolean :paypal
      t.integer :phon1
      t.integer :phon2
      t.string :pers1
      t.string :pers2
      t.string :long
      t.string :altitud
      t.string :email
      t.string :other

      t.timestamps
    end
  end
end
