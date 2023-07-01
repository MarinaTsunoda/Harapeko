class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :visits, dependent: :destroy
  enum sex: { male:0, female:1, other:2 }
  has_one_attached :profile_image
  
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.user_name = "ゲスト"
      user.last_name = "ゲスト"
      user.first_name = "閲覧用"
      user.last_name_kana = "ゲスト"
      user.first_name_kana = "エツランヨウ"
      user.birth_date = Date.parse("2000-1-1").strftime("%Y-%m-%d")
      user.sex = 2
      user.postal_code = "0000000"
      user.address = "東京都足立区1-1-1"
      user.telephone_number = "09012345678"
    end
  end
  
  validates :user_name, presence: true, length: { maximum: 20 }
  validates :user_introduction, length: { maximum: 140 }
  validates :postal_code, length: { is: 7 }
  
  
  def favorited_by?(post_id)
    favorites.where(post_id: post_id).exists?
  end
end