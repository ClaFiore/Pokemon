Type.destroy_all
Pokemon.destroy_all
Trainer.destroy_all
Battle.destroy_all
require 'faker'

types = []

types << Type.create(name: "water")
types << Type.create(name: "fire")
types << Type.create(name: "grass")
types << Type.create(name: "bug")
types << Type.create(name: "flying")
types << Type.create(name: "fighting")
types << Type.create(name: "electric")
types << Type.create(name: "ground")
types << Type.create(name: "ice")
types << Type.create(name: "normal")
types << Type.create(name: "poison")
types << Type.create(name: "psychic")
types << Type.create(name: "rock")

ids = types.map {|type| type.id}


10.times do
    x = rand(1..10) 
    y = rand(1..10) 
Pokemon.create(type_id: ids.sample, species: Faker::Games::Pokemon.name, speed: rand(1..10), defence: rand(1..10), original_attack: y, battle_attack: y, max_hp: x, current_hp: x, level: 1)
end


trainers = ["Red/Ash", "Blue/Gary", "Brock", "Misty", "Jessie", "James", "May", "Lucas", "Dawn", "Nate"]

10.times do
Trainer.create(name: trainers.sample)
end