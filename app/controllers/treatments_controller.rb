class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end
end
