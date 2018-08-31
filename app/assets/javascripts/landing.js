document.addEventListener("DOMContentLoaded", () => {
  var mouseX, mouseY;
  var ww = window.innerWidth;
  var wh = window.innerHeight;
  var traX, traY;

  document.addEventListener("mousemove", (event) => {
    mouseX = event.pageX;
    mouseY = event.pageY;
    traX = ((1 * mouseX) / 570) + 40;
    traY = ((1 * mouseY) / 570) + 50;

    $(".title2").css({"background-position": traX + "%" + traY + "%"});
  });

  const words = ["hangouts", "beers", "tournaments", "good times", "fedoras", "sega genesis", "fornite", "N64", "call of duty", "xbox one", "fifa 18", "competition", "fun", "grand theft auto", "zelda", "minecraft", "tetris"];
  let wordCounter = 0;
  const subTitle = document.querySelector(".subtitle1");

  setInterval(() => {
    wordCounter++;
    subTitle.innerHTML = `Games + Friends + ${words[wordCounter % words.length]}`;
  }, 1200);
});


