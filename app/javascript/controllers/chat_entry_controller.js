import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["submitButton", "inputField"];

  connect() {
    console.log("yoohoo");
    this.submitButtonTarget.classList.add("d-none");
    console.log(this.submitButtonTarget);
    console.log(this.inputFieldTarget);
    this.inputFieldTarget.addEventListener("input", this.hideButton.bind(this));
  }

  hideButton(event) {
    const anyText = event.target.value.trim() !== "";
    if (anyText) {
      this.submitButtonTarget.classList.remove("d-none");
    } else {
      this.submitButtonTarget.classList.add("d-none");
    }
  }
}
