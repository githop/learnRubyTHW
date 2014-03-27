function average(arr) {
  var sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum += arr[i]; 
  }
  return (sum / arr.length); 
}

var gradebook = {
 Joseph: {'testScores': [80,70,70,100] }, 
  Susan: {'testScores': [85, 80, 90, 90] },
  William: {'testScores': [75, 70, 80, 75]},
  Elizabeth: {'testScores': [100, 90, 95, 85]},
  addScore: function(name, score) {
    return gradebook[name].testScores.push(score);   
    },
  getAverage: function(name) {
    return average(gradebook[name].testScores); 
    }
  } 

gradebook.addScore("William", 59);

console.log(gradebook.getAverage("Susan"));
