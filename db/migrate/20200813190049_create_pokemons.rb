class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :trainer_id
      t.integer :type_id
      t.string :species
      t.string :nickname
      t.string :pokedex_entry
      t.integer :speed
      t.integer :defence
      t.integer :original_attack
      t.integer :battle_attack 
      t.integer :max_hp
      t.integer :current_hp
      t.integer :level

      t.timestamps
    end
  end
end
