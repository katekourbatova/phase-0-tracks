var colors = ["Lime green", "Magenta", "Cyan", "Chartreuse"];

var horseNames = ["Ed", "Sprinkles", "Unicorn", "Cerulian"];

colors.push("Brick red");
horseNames.push("Buster");

console.log(colors);
console.log(horseNames);

// function Horse(index) {
//   this.name = horseNames[index];
//   this.color = colors[index];
//   console.log("Our new horse is named " + this.name + " and is a " + this.color + " color.");
// }

// var newHorse = new Horse(0);
// console.log(newHorse);

function Horses(index) {
  var horse = {}
  horse[horseNames[index]] = colors[index];
  console.log(horse);
}

var pairedHorse = new Horses(1);
var pairedHorse = new Horses(colors.length - 1);