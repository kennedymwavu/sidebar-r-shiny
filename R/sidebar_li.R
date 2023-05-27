#' Create a sidebar list item
#'
#' This function creates a list item for a sidebar menu
#'
#' @param item_class The class of the list item. Default is "nav-item".
#' @param href The URL for the link. Default is "#".
#' @param link_id The id of the link element. Default is NULL.
#' @param link_class The class of the link. Default is "nav-link text-white".
#' @param aria_current The value of the "aria-current" attribute.
#' Default is "false".
#' @param icon_name The name of the icon. Default is NULL.
#' @param icon_class The class of the icon. Default is NULL.
#' @param label The label for the link.
#'
#' @return A `shiny::tags$li` object representing the sidebar list item.
#'
#' @examples
#' sidebar_li(
#'   item_class = "nav-item",
#'   href = "#",
#'   link_class = "nav-link text-white",
#'   aria_current = "false",
#'   icon_name = NULL,
#'   icon_class = "bi bi-grid pe-none me-2", # bootstrap icon
#'   label = " Products "
#' )
#'
#' @export
sidebar_li <- function(
    item_class = "nav-item",
    href = "#",
    link_id = NULL,
    link_class = "nav-link text-white",
    aria_current = "false",
    icon_name = NULL,
    icon_class = NULL,
    label = NULL
) {
  shiny::tags$li(
    class = item_class,
    tags$a(
      href = href,
      id = link_id,
      class = link_class,
      "aria-current" = aria_current,
      shiny::icon(
        name = NULL,
        class = icon_class
      ),
      label
    )
  )
}
