class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :movie_id
      t.boolean :watched

      t.timestamps

    end
  end
end
