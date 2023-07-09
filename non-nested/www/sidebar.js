/* global bootstrap: false */
(() => {
  'use strict'
  const tooltipTriggerList = Array.from(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  tooltipTriggerList.forEach(tooltipTriggerEl => {
    new bootstrap.Tooltip(tooltipTriggerEl)
  })
})();

let sidebar_ul = document.querySelector("#sidebar_ul");
let sidebar_li = sidebar_ul.querySelectorAll("li");

sidebar_li.forEach((li) => {
  li.addEventListener("click", () => {
    make_active(li.querySelector("a"));
  })
})

let make_active = function (target_anchor_element) {
  let sidebar_a = sidebar_ul.querySelectorAll("a");
  // remove class 'active' and set 'aria-current' to 'false' for all sidebar
  // anchor elements:
  sidebar_a.forEach((a) => {
    a.classList.remove("active");
    a.setAttribute("aria-current", "false");
  });

  // add class 'active' and set 'aria-current' to 'page' for the clicked
  // sidebar anchor element:
  target_anchor_element.classList.add("active");
  target_anchor_element.setAttribute("aria-current", "page");
};

// when a new li element is added on the sidebar, make it active:
document.addEventListener('DOMContentLoaded', function () {
  // Create a new MutationObserver instance
  let observer = new MutationObserver(function (mutations) {
    mutations.forEach(function (mutation) {
      // Check if new nodes were added to the sidebar_ul element
      if (mutation.type === 'childList' && mutation.addedNodes.length > 0) {
        // Iterate over the added nodes to find the newly added li elements
        mutation.addedNodes.forEach(function (addedNode) {
          if (addedNode.tagName === 'LI') {
            // Handle the newly added li element
            let anchor_element = addedNode.querySelector("a");
            addedNode.addEventListener("click", () => {
              make_active(anchor_element);
            });
            make_active(anchor_element);
          }
        });
      }
    });
  });

  // Configure and start observing the sidebar_ul element
  observer.observe(sidebar_ul, { childList: true });
});
