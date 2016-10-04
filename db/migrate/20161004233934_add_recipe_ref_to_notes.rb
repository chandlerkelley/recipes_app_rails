class AddRecipeRefToNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :recipe, foreign_key: true, null:false
  end
end
