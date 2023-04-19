class Tag < ApplicationRecord
  has_many :post_tag_relations, dependent: :destroy
  #has_many :tags, through: :post_tag_relations, dependent: :destroy
  belongs_to :tag_genre
end
