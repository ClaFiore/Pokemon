class Pokemon < ApplicationRecord
    belongs_to :trainer, optional: true
    has_one :type
    def strong_against?(opponent)
        if self.type.name == "water" && opponent.type.name == "fire" || "rock" || "ground"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "fire" && opponent.type.name == "grass" || "ice" || "bug" 
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "electric" && opponent.type.name == "water" || "flying"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "grass" && opponent.type.name == "water" || "ground" ||  "rock"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "ice" && opponent.type.name == "grass"|| "flying" 
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "fighting" && opponent.type.name ==  "rock" || "normal" || "ice"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "poison" && opponent.type.name == "grass" || "bug"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "ground" && opponent.type.name == "fire" || "electric" || "poison" || "rock"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "flying" && opponent.type.name == "bug" || "grass" || "fighting"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "psychic" && opponent.type.name == "fighting" || "poison"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "bug" && opponent.type.name == "grass" || "poison" || "psychic"
            self.battle_attack = 1.5 * self.original_attack
        elsif self.type.name == "rock" && opponent.type.name == "fire" || "ice" || "flying" || "bug"
            self.battle_attack = 1.5 * self.original_attack
        end
            
            
          
    end
    def weak_against?(opponent)
        if self.type.name == "water" && opponent.type.name == "electric" || "grass" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "fire" && opponent.type.name == "water" || "ground" || "rock" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "electric" && opponent.type.name == "ground"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "grass" && opponent.type.name == "fire" || "ice" ||  "poison" || "flying"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "ice" && opponent.type.name == "fire"|| "fighting" || "rock"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "fighting" && opponent.type.name ==  "flying" || "psychic" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "poison" && opponent.type.name == "ground" || "poison" || "rock" || "ghost"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "ground" && opponent.type.name == "grass" || "bug" 
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "flying" && opponent.type.name == "electric" || "rock"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "psychic" && opponent.type.name == "psychic"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "bug" && opponent.type.name == "fire" || "fighting" || "flying" || "ghost"
            self.battle_attack = 0.5 * self.original_attack
        elsif self.type.name == "rock" && opponent.type.name == "fighting" || "ground"
            self.battle_attack = 0.5 * self.original_attack
        end
        
    end

end
