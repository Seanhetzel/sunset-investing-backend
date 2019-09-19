class CreateHoldings < ActiveRecord::Migration[5.2]
  def change
    create_table :holdings do |t|
      t.integer :investor_id
      t.integer :property_id

      t.timestamps
    end
  end
end
