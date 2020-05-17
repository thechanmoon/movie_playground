class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :username
      t.string :title
      t.string :overview
      t.string :poster_path
      t.integer :tmdb_id

      t.timestamps
    end
  end
end
