
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
      if self.user_pokemon.speed > self.opponent_pokemon.speed || self.user_pokemon.speed == self.opponent_pokemon.speed
         $first = self.user_pokemon
         $second = self.opponent_pokemon
         $final_damage = ($first.battle_attack - $second.defence)
            if $second.defence > $first.battle_attack
               $final_damage = 1
            end
         $second.current_hp -= $final_damage
         $second.faint?
      elsif self.user_pokemon.speed < self.opponent_pokemon.speed
         $first = self.opponent_pokemon
         $second = self.user_pokemon 
         $final_damage = ($first.battle_attack - $second.defence)
            if $second.defence > $first.battle_attack
               $final_damage = 1
            end
         $second.current_hp -= $final_damage
         $second.faint?
      end
      if !$first.faint? && !$second.faint?
         counterattack
      end
      
   end 

   def counterattack
      $second_damage = ($second.battle_attack - $first.defence)
            if $first.defence > $second.battle_attack
               $second_damage = 1
            end
         $first.current_hp -= $second_damage
      $first.faint?
   end
  

end
