class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :language
      t.string :genre
      t.datetime :time
      t.float :rating
      t.time :length
      t.timestamps
    end
  end
end
