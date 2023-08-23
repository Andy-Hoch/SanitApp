class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :treatment
  STATUS_OPTIONS = ["Approved", "Pending", "Declined"]
  validates :status, inclusion: { in: STATUS_OPTIONS }
end
