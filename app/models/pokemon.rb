class Pokemon < ApplicationRecord
    has_many :sightings
    
    validates :common_name, :category, :pokemon_type, presence: true
    validates :common_name, uniqueness: true
end

class UniqueName < ActiveModel::Validator
    def validate(record)
        if record.common_name == record.evolves_into
            record.errors[:evolves_into] << "pokemon cannot evolve into itself"
        end 
    end 
end 

class Pokemon
    include ActiveModel::Validations
    validates_with UniqueName
end 
    
