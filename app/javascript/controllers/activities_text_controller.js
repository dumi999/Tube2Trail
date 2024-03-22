import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activities-text"
export default class extends Controller {
  static targets = ['shortText', 'fullText']

  connect() {
  }

  viewMore(event) {
    // console.log(event)
    event.preventDefault();
    event.currentTarget.style.display = 'none';
    this.shortTextTarget.style.display = 'none';
    this.fullTextTarget.style.display = 'block';
  }

  viewLess() {
    this.shortTextTarget.style.display = "block";
    this.fullTextTarget.style.display = "none";
    this.readMoreTarget.style.display = "inline";
    this.readLessTarget.style.display = "none";
  }
}
