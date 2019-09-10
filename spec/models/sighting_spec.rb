require 'rails_helper'

describe Sighting do 
    record = Sighting.new
    
    describe '#create' do
        it "date must be present" do
            record.date = ''
            record.valid?
            expect record.errors[:date].should include("can't be blank")
            
            record.date = '2019-07-11'
            record.valid?
            expect record.errors[:date].should_not include("can't be blank")
        end 
    end 

    describe '#create' do
        it "biome must be present" do
            record = Sighting.new
            record.biome = ''
            record.valid?
            expect record.errors[:biome].should include("can't be blank")
            
            record.biome = 'forest'
            record.valid?
            expect record.errors[:biome].should_not include("can't be blank")
        end 
    end
end 
            