class CreateFoodAllergies < ActiveRecord::Migration
  def change
    create_table :food_allergies do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
