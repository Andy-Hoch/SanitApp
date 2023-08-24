class TreatmentsController < ApplicationController
  before_action :set_treatment, only: %i[show edit update]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @treatments = Treatment.global_search(params[:query])
    else
      @treatments = Treatment.all
    end
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

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:name, :category, :description, :address, :price, :duration, :next_free_spot_timestamp, :photo)
  end
end
