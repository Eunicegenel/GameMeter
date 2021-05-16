class AddGistToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :gist, :text
  end
end
