class Country < ApplicationRecord
  belongs_to :sport
  has_many :games
end
