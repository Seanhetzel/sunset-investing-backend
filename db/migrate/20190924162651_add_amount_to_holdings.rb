class AddAmountToHoldings < ActiveRecord::Migration[5.2]
  def change
    add_column :holdings, :amount, :integer
  end
end
