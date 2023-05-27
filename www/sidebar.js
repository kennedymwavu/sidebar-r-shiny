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
sidebar_li.forEach((x) => {
  x.addEventListener("click", () => make_active(x));
});

let make_active = function (x) {
  // remove class 'active' and set 'aria-current' to 'false' for all sidebar
  // anchor elements:
  let anchor_elements = sidebar_ul.querySelectorAll("a");
  anchor_elements.forEach((a) => {
    a.classList.remove("active");
    a.setAttribute("aria-current", "false");
  });

  // add class 'active' and set 'aria-current' to 'page' for the clicked
  // sidebar anchor element:
  let a = x.querySelector("a");
  a.classList.add("active");
  a.setAttribute("aria-current", "page");
};
