import { Controller } from "@hotwired/stimulus"
import _ from "lodash"


export default class extends Controller {
  connect() {
    this.element.textContent = "More ...";
  }


  handleClick() {
    var array = ["Mezgani"]
    this.element.textContent = "";
  }
}


