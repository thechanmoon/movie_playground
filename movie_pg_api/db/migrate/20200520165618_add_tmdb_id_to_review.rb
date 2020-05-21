class AddTmdbIdToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :tmdb_id, :integer
  end
end
