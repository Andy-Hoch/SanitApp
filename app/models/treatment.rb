class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :reviews

  validates_presence_of :user, uniqueness: true
  validates_presence_of :review
end
