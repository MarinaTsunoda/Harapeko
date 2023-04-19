class Shop < ApplicationRecord
  belongs_to :post
  has_one_attached :logo_image
end
