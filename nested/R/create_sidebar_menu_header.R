#' Create a sidebar menu header
#' 
#' When clicked, it collapses it's contents (sidebar menus)
#' 
#' @param title Header title
#' @param title_class Bootstrap classes to apply to the title
#' @param data_bs_target 'data-bs-target' attribute of the menu header
#' @param data_bs_toggle 'data-bs-toggle' attribute of the menu header
#' @param class Bootstrap classes to apply to the menu header
#' @param aria_expanded 'aria-expanded' attribute of the menu header. Whether
#' this sidebar menu is open or closed. Either "true" or "false".
#' @return tagList with a tags$button
create_sidebar_menu_header <- \(
  title,
  title_class = "ps-2",
  data_bs_target,
  data_bs_toggle = "collapse",
  class = "btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed w-100",
  aria_expanded = "false"
) {
  tagList(
    tags$button(
      class = class,
      `data-bs-toggle` = data_bs_toggle,
      `data-bs-target` = data_bs_target,
      `aria-expanded` = aria_expanded,
      tags$span(
        class = title_class,
        title
      )
    )
  )
}
