class CreateTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :category
      t.text :description
      t.text :address
      t.float :price
      t.timestamp :next_free_spot_timestamp
      t.integer :duration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
