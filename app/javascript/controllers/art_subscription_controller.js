import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { artId: Number }

  connect() {
  this.channel = consumer.subscriptions.create(
    { channel: "ArtChannel", id: this.artIdValue },
    { received: data => console.log(data) }
  )
  console.log(`Subscribed to the art with the id ${this.artIdValue}.`);
}

received: data => this.element.insertAdjacentHTML("beforeend", data)

disconnect() {
  console.log("Unsubscribed from the chatroom")
  this.channel.unsubscribe()
}
