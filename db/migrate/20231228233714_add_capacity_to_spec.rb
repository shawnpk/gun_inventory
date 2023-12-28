class AddCapacityToSpec < ActiveRecord::Migration[7.0]
  def change
    add_column :specs, :capacity, :string
  end
end
