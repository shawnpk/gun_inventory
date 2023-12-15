class Gun < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :user_manual
end
