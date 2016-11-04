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
  return currentLongestStr
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
  return false // returns false if looping through the first object did not return true
}




//Driver code
console.log("Testing function that finds longest phrase.");
var arrPhrases = ["long phrase","longest phrase","longer phrase", "super long phrase"];
var arrAnimalBehaviors = ["running", "purring", "chasing smaller animals", "naps"];
console.log(find_longest(arrPhrases));
console.log(find_longest(arrAnimalBehaviors));


console.log("Testing function that checks whether two objects share key-value pair.");
console.log("1. Same keys, one matching value")
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log("2. Same keys, no matching values")
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 65}));
console.log("3. All different keys, no matching values")
console.log(match_pair({name: "Steven", age: 54}, {nickname: "Tamir", catname: "Maggie Scratcher"}));





