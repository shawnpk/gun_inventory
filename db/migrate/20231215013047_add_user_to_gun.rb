class AddUserToGun < ActiveRecord::Migration[7.0]
  def change
    add_reference :guns, :user, null: false, foreign_key: true
  end
end
