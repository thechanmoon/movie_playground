class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.string :text
      t.string :user_id
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
