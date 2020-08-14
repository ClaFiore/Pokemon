class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Trainer'
    belongs_to :opponent, class_name: 'Trainer'
    has_many :pokemons, through: :trainer
     def opponent_pokemon
         self.opponent.pokemons << Pokemon.all.sample
     end
end
