import Popover from 'stimulus-popover'

// Connects to data-controller="popover"
export default class extends Popover {
  connect() {
    super.connect();
    console.log("Popover controller connected");
  }
}
