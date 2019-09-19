class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :price
      t.integer :rent
      t.string :year_built
      t.decimal :last_year_appreciation
      t.decimal :next_year_appreciation
      t.integer :lease_length
      t.string :beds_baths_sqft
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
