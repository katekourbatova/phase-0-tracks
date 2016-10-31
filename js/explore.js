// Function to reverse a string
// The function will take a string
// It will take characters one by one from the end of the string
// And add them onto a reversed string
// Then return the reversed string


function reverse(str) {
  var len=str.length, reversedstr = "";
  for (var i = 1; i <= len; i++) {
  reversedstr = reversedstr + str.charAt(len-i);
  }
  return reversedstr
}

console.log(reverse("reverse me!"))