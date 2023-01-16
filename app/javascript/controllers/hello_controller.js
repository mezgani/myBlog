import { Controller } from "@hotwired/stimulus"
import _ from "lodash"

export default class extends Controller {
  connect() {
    this.element.textContent = "Click here"
  }

  handleClick() {
    this.element.textContent = _.intersection([2, 1], [2, 3]);
  }
}