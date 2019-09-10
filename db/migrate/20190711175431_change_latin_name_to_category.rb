class ChangeLatinNameToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :pokemons, :latin_name, :category
  end
end
