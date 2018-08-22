const right = document.getElementById("right");
const left  = document.getElementById("left");

right.addEventListener("mouseenter", function(){
  // shrink the left
  // remove flex grow from the left element
  // remove the flex grow class from the left element
  left.classList.remove("flex-grow-1");
})

right.addEventListener("mouseleave", function(){
  left.classList.add("flex-grow-1");
})

left.addEventListener("mouseenter", function(){
  right.classList.remove("flex-grow-1");
})

left.addEventListener("mouseleave", function(){
  right.classList.add("flex-grow-1");
})
