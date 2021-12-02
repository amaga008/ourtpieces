import { Controller } from "stimulus";
import consumer from "../channels/consumer";
const auctionTable = document.querySelector(".bids")

export default class extends Controller {
  static values = { artId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ArtChannel", id: this.artIdValue },
      { received: data => auctionTable.insertAdjacentHTML("afterbegin", data) }
    )
  console.log(`Subscribed to the art with the id ${this.artIdValue}.`);
  }
}

// console.log("x", data, this.element)
// this.element.children[0].children[0].children[1].insertAdjacentHTML("afterbegin", data)}
