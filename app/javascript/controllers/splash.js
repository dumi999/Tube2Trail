var splashScreen = document.querySelector('.splash-page');
splashScreen.addEventListener('click', ()=>{
  splashScreen.computedStyleMap.opacity = 0;
  setTimeout(()=>{
    splashScreen.classList.add('hidden')
  },610)
})
