/*

Write four functions:  sum, mean, and median.  Each accepts an array
and returns its respective calculation.

Below you will find driver code. Run the code in this file either from the command line
using Node.js or by pasting the code of this entire file into your
browser console.  All tests will log 'true' in the console when
they pass--false, otherwise.

I would encourage you to let the tests guide your work.  Code has been
provided to pass the first test.  The next step would be to make the
second test pass, and so on--sometimes your solution might result
in multiple tests passing.

*/


// __________________________________________
// Write your code below.

function sum(arr) {
  var total = 0;
  for (var i = 0; i < arr.length; i++){
    total += total[i]; 
  }
  return total; 
}

var mean

var mediam



oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]
console.log(sum(oddLengthArray));
console.log(sum(evenLengthArray));
// __________________________________________
// Driver Code:  Do not alter code below this line.

