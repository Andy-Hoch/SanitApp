class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  CATEGORIES = ["Low Energy",
                "Sleeping Problems",
                "Aches & Pains",
                "Breathing Problems",
                "Indigestions",
                "Headaches",
                "Mood swings",
                "Skin irritation",
                "Restlessness"]
  validates :category, inclusion: { in: CATEGORIES }
end
