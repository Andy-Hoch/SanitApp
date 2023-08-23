class TreatmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def show
  end

  def create
    @treatment = Treatment.new(treatment_params)
    @treatment.user = current_user
    if @treatment.save!
      redirect_to treatment_path(@treatment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  private

  def treatment_params
    params.require(:treatment).permit(:name, :category, :description, :address, :price, :duration, :next_free_spot_timestamp, :photo)
  end
end
