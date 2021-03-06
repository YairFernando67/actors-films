import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data);
    $("#notifications").prepend(data.html);
    $("#notifications").addClass('show');
    // Called when there's incoming data on the websocket for this channel
  }
});
