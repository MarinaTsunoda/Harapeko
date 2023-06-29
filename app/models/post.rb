class Post < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations
  belongs_to :user
  has_one_attached :image
  
  validates :shop_id, presence: true
  validates :name, presence: true, length: { maximum: 20 }
  validates :star, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },format: { with: /\A[0-9]+\z/ }

  def self.search(search)
    Post.where(['name LIKE ?', "%#{search}%"])
  end
end
