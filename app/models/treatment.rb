class Treatment < ApplicationRecord
  include PgSearch::Model
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

  pg_search_scope :global_search,
      against: [ :name, :category, :description, :address ],
      associated_against: {
        user: [ :first_name, :last_name ]
      },
      using: {
        tsearch: { prefix: true }
      }
end
