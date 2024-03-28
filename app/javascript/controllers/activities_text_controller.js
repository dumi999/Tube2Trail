import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['shortText', 'fullText']

  connect() {
  }

  viewMore(event) {
    event.preventDefault();
    event.currentTarget.style.display = 'none';
    this.shortTextTarget.style.display = 'none';
    this.fullTextTarget.style.display = 'block';
  }

  viewLess() {
    this.shortTextTarget.style.display = "block";
    this.fullTextTarget.style.display = "none";
    window.location.reload(); // Reload the page
  }
}
