class Game < ApplicationRecord
  has_and_belongs_to_many :category
  has_and_belongs_to_many :platform
  has_and_belongs_to_many :game_mode
end
