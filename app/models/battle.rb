class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Trainer'
    belongs_to :opponent, class_name: 'Trainer'
    has_many :pokemons, through: :trainer
     def random_opp_pokemon
        self.opponent.pokemons << Pokemon.all.sample
         
     end
     def opponent_pokemon
        self.opponent.pokemons.last
     end
     def user_pokemon   
        Pokemon.all.find($chosen_pokemon)
     end
 


    def attack
        if  self.user_pokemon.speed > self.opponent_pokemon.speed
             $first = self.user_pokemon
             $second = self.opponent_pokemon
             $second.current_hp -= $first.battle_attack
            $second.faint?
             byebug
               
        else self.user_pokemon.speed < self.opponent_pokemon.speed
             $first = self.opponent_pokemon
             $second = self.user_pokemon 
            $second.current_hp -= $first.battle_attack
            $second.faint?
            byebug
            
        end
     end 
end
