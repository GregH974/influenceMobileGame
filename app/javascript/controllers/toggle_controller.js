import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="main-nav-toggle"
export default class extends Controller {
  static targets = ["content"];
  static values = {
    // setup values that we reference in our controller, passed in from our HTML
    class: String,
    initialActive: Boolean,
  }

  connect() {
    if (this.initialActiveValue === true) {
      // use the initialActiveValue passed from data-toggle-initial-active-value to optionally toggle our class
      this.toggle()
    }
  }

  toggle() {
    let hiddenClass = "hidden"
    this.contentTarget.classList.toggle(hiddenClass);
  }
}
