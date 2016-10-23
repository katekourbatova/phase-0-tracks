animals = {
  felines: ["cougars", "lions", "cats and kittens"],
  canines: {
    domestic_dogs: {
      behaviors: [
        "running",
        "fetching balls",
        "licking people",
        "barking"],
      typical_names: [
        "Spot",
        "Fido",
        "Clifford",
        "Rex"]
    },
    wolves: ["Gray wolf", "Eastern wolf"],
    foxes: ["Red fox", "Bat-eared fox", "Gray fox"],
    jackals: ["Black-backed jackal", "Side-striped jackal", "Golden jackal"],
    other_species: ["Coyote"]
  }
}

puts "A #{animals[:canines][:other_species][0]} is a type of canine."

dog_names = animals[:canines][:domestic_dogs][:typical_names]
dog_behaviors = animals[:canines][:domestic_dogs][:behaviors]

puts "#{dog_names[0]} enjoys #{dog_behaviors[-1]}."
puts "His friend #{dog_names[3]} prefers #{dog_behaviors[1]} and #{dog_behaviors[2]}."

puts "Felines include:"
puts animals[:felines]