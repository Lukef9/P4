class Game < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :platforms
  has_and_belongs_to_many :game_modes
end
