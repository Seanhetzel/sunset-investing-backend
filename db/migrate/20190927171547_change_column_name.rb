class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :location, :address
  end
end
