class Sighting < ApplicationRecord
    belongs_to :pokemon 
    
    validates :date, :biome, presence: true
end
