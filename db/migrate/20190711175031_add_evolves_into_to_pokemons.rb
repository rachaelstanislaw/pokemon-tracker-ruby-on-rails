class AddEvolvesIntoToPokemons < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :evolves_into, :string
  end
end
