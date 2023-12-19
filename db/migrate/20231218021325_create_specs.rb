class CreateSpecs < ActiveRecord::Migration[7.0]
  def change
    create_table :specs do |t|
      t.string :barrel_length
      t.string :barrel_type
      t.string :rate_of_twist
      t.string :overall_length
      t.string :weight
      t.string :receiver_finish
      t.string :rear_sight
      t.string :front_sight
      t.string :scopeability
      t.string :scope_mount_type
      t.string :stock_material
      t.string :buttplate_pad
      t.string :length_of_pull
      t.string :safety
      t.string :best_uses
      t.text :notes
      t.references :gun, null: false, foreign_key: true

      t.timestamps
    end
  end
end
