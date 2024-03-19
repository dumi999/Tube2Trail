document.addEventListener("turbo:load", function() {
  console.log("Document loaded with Turbo");

  const burgerMenu = document.getElementById("burger-menu");
  const navbarMenu = document.getElementById("navbar-menu");

  burgerMenu.addEventListener("click", function() {
    console.log("Burger menu clicked");
    navbarMenu.classList.toggle("active");
  });
});
