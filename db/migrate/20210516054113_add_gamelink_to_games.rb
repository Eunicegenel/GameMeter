class AddGamelinkToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :gamelink, :text
  end
end
