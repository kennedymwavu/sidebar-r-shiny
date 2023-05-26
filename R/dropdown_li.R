#' Create a dropdown list item
#'
#' This function creates a list item for a dropdown menu
#'
#' @param class_item The class of the list item. Default is "dropdown-item".
#' @param href The URL for the link. Default is "#".
#' @param label The label for the link.
#'
#' @return A `shiny::tags$li` object representing the dropdown list item.
#'
#' @examples
#' dropdown_li(label = "Settings")
#'
#' @export
dropdown_li <- function(
  class_item = "dropdown-item",
  href = "#",
  label = NULL
) {
  tags$li(
    tags$a(
      class = class_item,
      href = href,
      label
    )
  )
}
