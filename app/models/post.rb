class Post < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :visits, dependent: :destroy
  has_many :tags, dependent: :destroy
  belongs_to :user
  belongs_to :shop
end
