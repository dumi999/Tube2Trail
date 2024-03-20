// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

  // JavaScript to toggle visibility of full description
  document.addEventListener("DOMContentLoaded", function() {
    const viewMoreLinks = document.querySelectorAll('.view-more-link');
    viewMoreLinks.forEach(function(link) {
      link.addEventListener('click', function(event) {
        event.preventDefault();
        const descriptionContainer = this.closest('.activity-description');
        const fullDescription = descriptionContainer.querySelector('.full-description');
        fullDescription.style.display = 'block';
        this.parentNode.style.display = 'none'; // Hide the "View more" link
      });
    });
  });
