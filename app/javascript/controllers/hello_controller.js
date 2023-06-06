import { Controller } from "@hotwired/stimulus"
import _ from "lodash"


export default class extends Controller {
  connect() {
    this.element.textContent = "... إقرأ المزيد" ;
  }


  handleClick() {
    var array = ["Mezgani"]
    this.element.textContent = "";
  }
}


