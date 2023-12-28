class ChangeAmmunitionTypeToCaliber < ActiveRecord::Migration[7.0]
  def change
    rename_column :guns, :ammunition_type, :caliber_guage
  end
end
