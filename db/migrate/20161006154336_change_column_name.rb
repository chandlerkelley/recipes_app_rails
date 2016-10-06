class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :recipes, :health_labels, :labels
  end
end
