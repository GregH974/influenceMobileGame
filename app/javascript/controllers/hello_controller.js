import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element)
    console.log('hello_controller.js: ', this.element)
    this.element.textContent = "Hello World!2024"
  }
}
