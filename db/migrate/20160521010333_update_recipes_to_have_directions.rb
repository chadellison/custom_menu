class UpdateRecipesToHaveDirections < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.string :directions, array: true, default: []
    end
  end
end
