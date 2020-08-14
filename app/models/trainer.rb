class Trainer < ApplicationRecord
    has_many :battles, class_name: "Trainer", foreign_key: "user_id"
    has_many :battles, class_name: "Trainer", foreign_key: "opponent_id"
    has_many :pokemons

end
