class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update]

  def index
    @appointments = Appointment.where(user_id: current_user.id)
    @approved_appointments = []
    @pending_appointments = []
    @declined_appointments = []

    @appointments.each do |appointment|
      case appointment.status
      when "Confirmed"
        @approved_appointments << appointment
      when "Pending"
        @pending_appointments << appointment
      when "Declined"
        @declined_appointments << appointment
      end
    end
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @treatment = Treatment.find(params[:treatment_id])
    @appointment.treatment = @treatment
    @appointment.status = "Pending"
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      @appointment = Appointment.new
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:status, :comment, :user_id, :treatment_id, :timeslot)
  end
end
