class User < ApplicationRecord
  before_save :downcase
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :films, foreign_key: "creator_id"
  has_many :actors, foreign_key: "creator_id"
  has_many :comments
  has_many :likes
  
  def downcase
    email.downcase!
  end

  def likes?(likeable)
    likeable.likes.where(user_id: id).any?
  end
end