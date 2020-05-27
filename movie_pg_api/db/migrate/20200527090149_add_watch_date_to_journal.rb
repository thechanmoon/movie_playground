class AddWatchDateToJournal < ActiveRecord::Migration[6.0]
  def change
    add_column :journals, :watch_date, :datetime
  end
end
