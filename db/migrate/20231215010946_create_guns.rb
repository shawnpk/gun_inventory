class CreateGuns < ActiveRecord::Migration[7.0]
  def change
    create_table :guns do |t|
      t.string :make
      t.string :model
      t.string :name
      t.string :ammunition_type
      t.string :serial_number
      t.integer :production_year
      t.date :purchase_date
      t.integer :purchase_price
      t.string :purchase_location
      t.string :url

      t.timestamps
    end
  end
end
