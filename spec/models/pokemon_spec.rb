require 'rails_helper'

describe Pokemon do 
    record = Pokemon.new
    
    describe '#create' do
        it "common_name must be present" do
            record.common_name = ''
            record.valid?
            expect record.errors[:common_name].should include("can't be blank")
            
            record.common_name = 'Charmander'
            record.valid?
            expect record.errors[:common_name].should_not include("can't be blank")
        end 
    end 

    describe '#create' do
        it "category must be present" do
            record.category = ''
            record.valid?
            expect record.errors[:category].should include("can't be blank")
            
            record.category = 'fire lizard'
            record.valid?
            expect record.errors[:category].should_not include("can't be blank")
        end 
    end 
    
    describe '#create' do
        it "pokemon_type must be present" do
            record.pokemon_type = ''
            record.valid?
            expect record.errors[:pokemon_type].should include("can't be blank")
            
            record.pokemon_type = 'fire'
            record.valid?
            expect record.errors[:pokemon_type].should_not include("can't be blank")
        end 
    end 
    
    describe '#create' do
        it "pokemon common_name cannot match evolves_into" do
            record.common_name = 'Charmander'
            record.evolves_into = 'Charmander'
            record.valid?
            expect record.errors[:evolves_into].should include("pokemon cannot evolve into itself")
            
            record.common_name = 'Charmander'
            record.evolves_into = 'Charmeleon'
            record.valid?
            expect record.errors[:evolves_into].should_not include("pokemon cannot evolve into itself")
        end 
    end
    
    describe '#create' do
        it "pokemon common_name must be unique" do
            record2 = Pokemon.new
            record.common_name = 'Charmander'
            record2.common_name = 'Charmander'
            record2.valid?
            expect record2.errors[:common_name].should include("Common name has already been taken")
            
            record.common_name = 'Charmander'
            record2.common_name = 'Charmeleon'
            record2.valid?
            expect record2.errors[:common_name].should_not include("Common name has already been taken")
        end 
    end 
end 
    
    