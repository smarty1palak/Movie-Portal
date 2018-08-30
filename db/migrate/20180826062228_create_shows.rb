class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.boolean :three_d
      t.time :start_time
      t.time :end_time
      t.float :GOLD_p
      t.float :SILVER_p
      t.float :BRONZE_p

      t.timestamps
    end
  end
end
