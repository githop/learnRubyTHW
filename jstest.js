function average(arr) {
  var sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum += arr[i]; 
  }
  return (sum / arr.length); 
}

var gradebook = {
 Joseph: {'testScores': scores[0] }, 
  Susan: {'testScores': scores[1] },
  William: {'testScores': scores[2]},
  Elizabeth: {'testScores': scores[3]},
  addScore: function(name, score) {
    return gradebook[name].testScores.push(score);   
    },
  getAverage: function(name) {
    return average(gradebook[name].testScores); 
    }
  } 

gradebook.addScore("William", 59);

console.log(gradebook.getAverage("Susan"));
