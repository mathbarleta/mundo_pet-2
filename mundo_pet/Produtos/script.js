window.addEventListener("load", function() {
  var carousel = document.querySelector(".carousel");
  var images = carousel.getElementsByTagName("img");
  var currentIndex = 0;
  var interval = setInterval(changeImage, 3500);

  function changeImage() {
    images[currentIndex].style.display = "none";
    currentIndex = (currentIndex + 1) % images.length;
    images[currentIndex].style.display = "block";
  }
});