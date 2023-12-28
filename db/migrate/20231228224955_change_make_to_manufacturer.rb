class ChangeMakeToManufacturer < ActiveRecord::Migration[7.0]
  def change
    rename_column :guns, :make, :manufacturer
  end
end
