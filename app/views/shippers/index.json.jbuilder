json.array!(@shippers) do |shipper|
  json.extract! shipper, :id, :shipco, :addr1, :add2, :city, :zip, :area, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :oth_aes, :oth_ins, :oth_brok, :oth_impo, :inventory, :oth_pur, :oth_repa, :oth_ware, :pay_cash, :pay_chk, :pay_debCrd, :paypal, :phon1, :phon2, :pers1, :pers2, :longitude, :latitude, :email, :other
  json.url shipper_url(shipper, format: :json)
end
