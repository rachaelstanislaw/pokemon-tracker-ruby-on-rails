class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :common_name
      t.string :latin_name
      t.string :type

      t.timestamps
    end
  end
end
