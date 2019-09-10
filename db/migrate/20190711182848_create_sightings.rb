class CreateSightings < ActiveRecord::Migration[5.0]
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.string :biome
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
