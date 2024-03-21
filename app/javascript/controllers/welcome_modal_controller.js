import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("welcome controller says hi");

    const welcomeModal = this.element;
    welcomeModal.classList.add('show');
    welcomeModal.style.display = 'block';

    const gotItButton = document.querySelector('.dismiss');
    console.log(gotItButton);
    gotItButton.addEventListener('click', (event) => {
      console.log(event);
      this.element.classList.remove('show');
      this.element.style.display = 'none';
    });
  }
}
