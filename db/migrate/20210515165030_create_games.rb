class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string "game_name"
      t.string "game_type"
      t.string "game_tag_1"
      t.string "game_tag_2"
      t.string "game_tag_3"
      t.string "game_tag_4"
      t.string "game_tag_5"
      t.float "score"
    end
  end
end
