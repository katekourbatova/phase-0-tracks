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

var arrPhrases = ["long phrase","longest phrase","longer phrase", "super long phrase"]
var arrAnimalBehaviors = ["running", "purring", "chasing smaller animals", "naps"]
console.log(find_longest(arrPhrases))
console.log(find_longest(arrAnimalBehaviors))