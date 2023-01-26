class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, :user_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :post
         has_many :story
         has_many :comments
         has_many :likes
         has_one_attached :avatar


end
