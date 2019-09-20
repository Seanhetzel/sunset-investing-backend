class RenamePropertyTypeToZone < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :type, :zone
  end
end
