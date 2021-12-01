import { Controller } from "stimulus";
import consumer from "../channels/consumer";
const auction = document.querySelector("table")
console.log(auction.childNodes[1].childNodes[3])
export default class extends Controller {
  static values = { artId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ArtChannel", id: this.artIdValue },
      { received: data => auction.insertAdjacentHTML("beforeend", data) }
    )
  console.log(`Subscribed to the art with the id ${this.artIdValue}.`);
  }
}

// console.log("x", data, this.element)
// this.element.children[0].children[0].children[1].insertAdjacentHTML("afterbegin", data)}
