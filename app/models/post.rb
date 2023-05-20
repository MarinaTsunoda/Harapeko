class Post < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :visits, dependent: :destroy
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations
  has_many :shops, dependent: :destroy
  belongs_to :user
  has_one_attached :image

end
