class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end
end
