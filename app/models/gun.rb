class Gun < ApplicationRecord
  belongs_to :user
  has_one :spec, dependent: :destroy
  has_one_attached :photo
  has_one_attached :user_manual

  TYPES = %w[Frame Pistol Receiver Revolver Rifle Shotgun Other].freeze

  def self.ransackable_attributes(auth_object = nil)
    ["caliber_guage", "created_at", "gun_type", "id", "manufacturer", "model", "name", "production_year",
     "purchase_date", "purchase_location", "purchase_price", "serial_number", "updated_at", "url", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["photo_attachment", "photo_blob", "spec", "user", "user_manual_attachment", "user_manual_blob"]
  end
end
