class Shop < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one_attached :logo_image
end
