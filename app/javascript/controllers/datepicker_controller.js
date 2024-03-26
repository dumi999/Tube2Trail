import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    console.log('flatpickr working brrrrr');
    flatpickr(this.element)
  }
}
