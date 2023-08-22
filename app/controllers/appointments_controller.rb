class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user_id: current_user.id).where(status: "pending")
    @approved_appointments = []
    @pending_appointments = []
    @declined_appointments = []
    @appointments.each do |appointment|
      if appointment.status == "confirmed"
        @approved_appointments << appointment
      elsif appointment.status == "pending"
        @pending_appointments << appointment
      elsif appointment.status == "declined"
        @declined_appointments << appointment
      else
        raise
      end
    end
    raise
  end

  def new
    @appointment = Appointment.new
  end
end
