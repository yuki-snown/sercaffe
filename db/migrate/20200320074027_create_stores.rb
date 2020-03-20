class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.integer :ranking_id
      t.integer :rating
      t.integer :company_id
      t.binary :image
      t.string :weekdays_start
      t.string :time
      t.time :weekdays_end
      t.time :holidays_start
      t.time :holidays_end
      t.string :size_m
      t.string :integer
      t.integer :size_l
      t.integer :walk_time
      t.integer :length
      t.integer :power
      t.string :wifi

      t.timestamps
    end
  end
end
