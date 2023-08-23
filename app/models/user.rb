class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :treatments, dependent: :destroy
  has_many :reviews, through: :treatment
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
end
