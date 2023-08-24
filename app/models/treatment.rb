class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
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
  include PgSearch::Model
  multisearchable against: %i[name category description]
end
