
class Pokemon < ApplicationRecord
    belongs_to :trainer, optional: true
    has_one :type



    def faint?
        if self.current_hp <= 0 
           self.current_hp = 0
            return true
        else 
            return false
        end
    end

def strong_against?(opponent)
        if self.type.name == "water" && opponent.type.name == "fire" || opponent.type.name == "rock" || opponent.type.name == "ground"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "fire" && opponent.type.name == "grass" || opponent.type.name == "ice" || opponent.type.name == "bug" 
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "electric" && opponent.type.name == "water" || opponent.type.name == "flying"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "grass" && opponent.type.name == "water" || opponent.type.name == "ground" ||  opponent.type.name == "rock"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "ice" && opponent.type.name == "grass"|| opponent.type.name == "flying" 
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "fighting" && opponent.type.name ==  "rock" || opponent.type.name == "normal" || opponent.type.name == "ice"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "poison" && opponent.type.name == "grass" || opponent.type.name == "bug"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "ground" && opponent.type.name == "fire" || opponent.type.name == "electric" || opponent.type.name == "poison" || opponent.type.name == "rock"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "flying" && opponent.type.name == "bug" || opponent.type.name == "grass" || opponent.type.name == "fighting"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "psychic" && opponent.type.name == "fighting" || opponent.type.name == "poison"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "bug" && opponent.type.name == "grass" || opponent.type.name == "poison" || opponent.type.name == "psychic"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "rock" && opponent.type.name == "fire" || opponent.type.name == "ice" || opponent.type.name == "flying" || opponent.type.name == "bug"
            self.battle_attack = 1.5 * self.original_attack
        end     
end

def weak_against?(opponent)
        if self.type.name == "water" && opponent.type.name == "electric" || opponent.type.name == "grass" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "fire" && opponent.type.name == "water" || opponent.type.name == "ground" || opponent.type.name == "rock" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "electric" && opponent.type.name == "ground"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "grass" && opponent.type.name == "fire" || opponent.type.name == "ice" ||  opponent.type.name == "poison" || opponent.type.name == "flying"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "ice" && opponent.type.name == "fire"|| opponent.type.name == "fighting" || opponent.type.name == "rock"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "fighting" && opponent.type.name ==  "flying" || opponent.type.name == "psychic" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "poison" && opponent.type.name == "ground" || opponent.type.name == "poison" || opponent.type.name == "rock" || opponent.type.name == "ghost"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "ground" && opponent.type.name == "grass" || opponent.type.name == "bug" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "flying" && opponent.type.name == "electric" || opponent.type.name == "rock"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "psychic" && opponent.type.name == "psychic"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "bug" && opponent.type.name == "fire" || opponent.type.name == "fighting" || opponent.type.name == "flying" || opponent.type.name == "ghost"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "rock" && opponent.type.name == "fighting" || opponent.type.name == "ground"
            self.battle_attack = 0.5 * self.original_attack
        end
end

end
