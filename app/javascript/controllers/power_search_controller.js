import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["powers", "form"]

  connect() {
    console.log(this.element)
    console.log(this.powerTarget)
    console.log(this.formTarget)

  }

  search(event) {
    // event.preventDefault()

    console.log("TODO: send request in AJAX")
    fetch(`${this.formTarget.action}?query=${event.target.value}`, {
      headers: { "Accept": "application/json"}
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      this.powersTarget.innerHTML = data.powers;
    })
  }
}
