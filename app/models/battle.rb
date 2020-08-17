require 'faker'
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
      if self.user_pokemon.speed > self.opponent_pokemon.speed
         $first = self.user_pokemon
         $second = self.opponent_pokemon
         $second.current_hp -= $first.battle_attack
         $second.faint?
      else self.user_pokemon.speed < self.opponent_pokemon.speed
         $first = self.opponent_pokemon
         $second = self.user_pokemon 
         $second.current_hp -= $first.battle_attack
         byebug
         $second.faint?
         
      end
      if !$first.faint? && !$second.faint?
         counterattack
       else 
         game_over
       end
      
   end 

   def counterattack
      $first.current_hp -= $second.battle_attack
      $first.faint?
   end

 
   def game_over
      Pokemon.destroy_all
      10.times do
         x = rand(1..10) 
         y = rand(1..10) 
       Pokemon.create(type_id: ids.sample, species: Faker::Games::Pokemon.name, speed: rand(1..10), defence: rand(1..10), original_attack: y, battle_attack: y, max_hp: x, current_hp: x, level: 1)
       end
   end
   

end
