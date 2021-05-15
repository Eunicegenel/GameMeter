class Game < ApplicationRecord
    validates :game_name, presence: true, uniqueness: true
    validates :game_type, presence: true
end
