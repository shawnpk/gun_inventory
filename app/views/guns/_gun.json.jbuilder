json.extract! gun, :id, :manufacturer, :model, :name, :caliber_guage, :serial_number, :production_year, :purchase_date, :purchase_price, :purchase_location, :url, :created_at, :updated_at
json.url gun_url(gun, format: :json)
