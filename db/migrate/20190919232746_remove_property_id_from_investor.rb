class RemovePropertyIdFromInvestor < ActiveRecord::Migration[5.2]
  def change
    remove_column :investors, :holding_id, :integer
  end
end
