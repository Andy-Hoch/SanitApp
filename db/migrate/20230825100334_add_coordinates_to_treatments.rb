class AddCoordinatesToTreatments < ActiveRecord::Migration[7.0]
  def change
    add_column :treatments, :latitude, :float
    add_column :treatments, :longitude, :float
  end
end
