class AddIndexToMovies < ActiveRecord::Migration[5.1]
  def change
    add_index :movies, :name, unique: true
  end
end
