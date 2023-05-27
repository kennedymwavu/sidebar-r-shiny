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
  x.addEventListener("click", () => {
    // remove class 'active' from every other li:
    let anchor_elements = sidebar_ul.querySelectorAll("a");
    anchor_elements.forEach((a) => {
      a.classList.remove("active");
    });
    
    // add class 'active' to this element:
    x.querySelector("a").classList.add("active");
  });
});