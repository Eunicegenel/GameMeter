class CreateCurrentids < ActiveRecord::Migration[6.1]
  def change
    create_table :currentids do |t|
      t.integer "game_id"
    end
  end
end
