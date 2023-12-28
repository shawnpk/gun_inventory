class Gun < ApplicationRecord
  belongs_to :user
  has_one :spec, dependent: :destroy
  has_one_attached :photo
  has_one_attached :user_manual

  TYPES = %w[Frame Pistol Receiver Revolver Rifle Shotgun Other].freeze
end
