import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["restaurants", "newRestaurant"]

  connect() {
    const currentPathname = window.location.pathname;

    if (this.restaurantsTarget.href.endsWith(currentPathname)) {
      this.restaurantsTarget.classList.add("active");
    } else {
      this.restaurantsTarget.classList.remove("active");
    }

    if (this.newRestaurantTarget.href.endsWith(currentPathname)) {
      this.newRestaurantTarget.classList.add("active");
    } else {
      this.newRestaurantTarget.classList.remove("active");
    }
  }
}
