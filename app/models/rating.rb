class Rating < ApplicationRecord
    validates :user_id, presence: true
    validates :game_id, presence: true
    validates :comment, presence: true
    validates :rating, presence: true
end
