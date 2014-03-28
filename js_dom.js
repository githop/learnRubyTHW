window.onload= function(){

//RELEASE 0: Link this script to the js_dom.html file and analyze what this code does. 

document.getElementsByTagName('body')[0].style.backgroundColor = "pink"

//RELEASE 1:
//Add code here to select elements of the DOM 

document.getElementById('body').style.backgroundColor = "gray";

document.getElementsByTagName('body')[0].style.backgroundColor = "red"; 

document.querySelector("body").style.backgroundColor = "green";

//RELEASE 2: 
  // Add code here to manipulate the DOM.
document.querySelector('h2').style.color = "yellow";
document.querySelector('p').style.border = '3px solid';
document.querySelector('p').style.borderColor = 'yellow';
document.querySelector('p').style.padding = "5px";
document.getElementById('testing').innerHTML = "Testing...Complete!"; 
document.getElementById('hidden').style.visibility = "hidden"; 
//RELEASE 3: Event Listener
  // Add the code for the event listener here and replace the console.log code with code that changes the color of some DOM element

document.getElementById('color-switcher').addEventListener('click', function(){
    document.querySelector('h1').style.color = "yellow"; 
})

//RELEASE 4 : Experiment on your own









}  // end of the window.onload function do not remove or write DOM manipulation below this.
