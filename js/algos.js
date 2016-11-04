// Function for returning the longest string from array

// Set current max length variable to 0
// Iterate over array, find the length of each string
// - If the length of the string is larger than current stored max length:
//    - update max length
//    - update a variable storing current longest string
// Return longest string

function find_longest(arr) {
  var currentMaxLength = 0;
  var currentLongestStr = "";
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > currentMaxLength) {
      currentMaxLength = arr[i].length;
      currentLongestStr = arr[i];
    }
  }
  return currentLongestStr;
};

// Function that checks whether two objects share at least one key-value pair
// For each key-value pair in first object, function should check if there is an equivalent key-value pair in second object
// If matching pair is found, function returns true
// If no matching pairs are found, function returns false

function match_pair(obj1, obj2) {
  for (var i in obj1) {
    if (obj1[i] == obj2[i]) {
      return true;
    }
  }
  return false; // returns false if looping through the first object did not return true
}

// Function that takes integer for length and returns array of strings of given length
// (loop) FOR numbers 0 to n-1 assign a string to that number in array
// String should be a random number (1-10) of random letters

function build_string_array(n_words) {
  var new_array = [];
  var n_letters = 0;
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < n_words; i++) {
    n_letters = (Math.floor(Math.random() * 10) + 1); // Math.random generates between 0(inclusive) and 1(exclusive). *10 would make it up to 10(exclusive). Add one, then floor. Result is whole number between 1 and 10, inclusive.
    var new_string = "";
    for (var x = 0; x < n_letters; x++) {
      new_string += alphabet.charAt(Math.floor(Math.random()*27)); //adds to new string a random character from alphabet string. 
    }
    new_array[i] = new_string;
  }
  return new_array;
}



//Driver code
console.log("Testing function that finds longest phrase.");
var arrPhrases = ["long phrase","longest phrase","longer phrase", "super long phrase"];
var arrAnimalBehaviors = ["running", "purring", "chasing smaller animals", "naps"];
console.log(find_longest(arrPhrases));
console.log(find_longest(arrAnimalBehaviors));


console.log("Testing function that checks whether two objects share key-value pair.");
console.log("1. Same keys, one matching value");
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log("2. Same keys, no matching values");
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 65}));
console.log("3. All different keys, no matching values");
console.log(match_pair({name: "Steven", age: 54}, {nickname: "Tamir", catname: "Maggie Scratcher"}));

console.log("Testing function for creating array of random strings.");
console.log(build_string_array(2));
console.log(" ");


