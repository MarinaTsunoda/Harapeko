class TagGenre < ApplicationRecord
  has_many :tags, dependent: :destroy
end
