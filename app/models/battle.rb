class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Trainer'
    belongs_to :opponent, class_name: 'Trainer'
    has_many :pokemons, through: :trainer
     def opponent_pokemon
         self.opponent.pokemons << Pokemon.all.sample
         self.opponent.pokemons.last
     end
     def user_pokemon   
        Pokemon.all.find($chosen_pokemon)
     end
 
    
     def attack
       if  self.user_pokemon.speed > self.opponent_pokemon.speed
            self.opponent_pokemon.current_hp -= self.user_pokemon.battle_attack    
       else self.user_pokemon.speed < self.opponent_pokemon.speed
            self.user_pokemon.current_hp -= self.opponent_pokemon.battle_attack
       end
    
        #     a = []
        #    a << self.user.user_pokemon
        #    a << self.opponent.opponent_pokemon
        #    a.sample.current_hp -=  
        
     end 


end
