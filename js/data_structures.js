var colors = ["Lime green", "Magenta", "Cyan", "Chartreuse"];

var horseNames = ["Ed", "Sprinkles", "Unicorn", "Cerulian"];

colors.push("Brick red");
horseNames.push("Buster");

console.log(colors);
console.log(horseNames);

// Unpaired Horse
// function Horse(index) {
//   this.name = horseNames[index];
//   this.color = colors[index];
//   console.log("Our new horse is named " + this.name + " and is a " + this.color + " color.");
// }

// var newHorse = new Horse(0);
// console.log(newHorse);


// Paired horses (name/color value pairs)
function Horses(index) {
  var horse = {}
  horse[horseNames[index]] = colors[index];
  console.log(horse);
}

var pairedHorse = new Horses(1);
var pairedHorse = new Horses(colors.length - 1);

// Car
function Cars(color, model, year, mileage) {
  this.color = color;
  this.model = model;
  this.year = year;
  this.mileage = mileage;
  this.accelerate = function() { console.log("Going faster and faster!"); };
  this.about = function() { console.log ("Color: " + color + "\nModel: " + model); };

}

var newCar = new Cars("red", "sedan", 2012, 50000);
newCar.about();

var secondCar = new Cars("green", "Jeep", 1991, 1000000);
secondCar.about();
secondCar.accelerate();

