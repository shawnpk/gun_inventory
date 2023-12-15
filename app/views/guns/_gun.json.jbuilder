json.extract! gun, :id, :make, :model, :name, :ammunition_type, :serial_number, :production_year, :purchase_date, :purchase_price, :purchase_location, :url, :created_at, :updated_at
json.url gun_url(gun, format: :json)
