class Post < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :visits, dependent: :destroy
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations
  has_many :shops, dependent: :destroy
  belongs_to :user
  has_one_attached :image

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  def visited_by?(user)
    visits.exists?(user_id: user.id)
  end
end
