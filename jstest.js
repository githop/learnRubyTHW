function sumArray(arr) {
  var counter = 0; 
  for (var i = 0; i < arr.length; i++) {
    counter += arr[i]; 
  }
  return counter; 
}

var test = [1,2,3]; 


function medianArray(arr) {
  if (arr.length % 2 == 0){
    return (arr[arr.length / 2 - 1] + arr[arr.length / 2]) / 2; 
  } else {
    return arr[(arr.length - 1) / 2] ; 
  }
}



function meanArray(arr) {
  var counter = 0; 
  for (var i = 0; i < arr.length; i++) {
    counter += arr[i]; 
  }
  return (counter / arr.length); 
}


console.log("Median: " + medianArray(test));
console.log("Mean: " + meanArray(test)); 
console.log("Sum: " + sumArray(test));


