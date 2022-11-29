//Go to top button:
mybutton = document.getElementById("buttonToTop");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () {
  scrollFunction()
};

function scrollFunction() {
  if (mybutton && (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20)) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}



// Parallax Scrolling

window.addEventListener('scroll', function(){
  var scrollPosition = window.pageYOffset;
  var bgParallax = document.getElementsByClassName('parallax')[0];
  var limit = bgParallax.offsetTop + bgParallax.offsetHeight;  
  if (scrollPosition <= limit){
    bgParallax.style.backgroundPositionY = (100 - 100*scrollPosition/limit) + '%';   
  }else{
    bgParallax.style.backgroundPositionY = '50%';    
  }
});
