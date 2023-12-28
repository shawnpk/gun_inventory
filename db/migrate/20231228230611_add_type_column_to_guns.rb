class AddTypeColumnToGuns < ActiveRecord::Migration[7.0]
  def change
    add_column :guns, :gun_type, :string
  end
end
