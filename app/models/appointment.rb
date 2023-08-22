class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  validates_presence_of :treatment
  validates_presence_of :user, uniqueness: true
end
