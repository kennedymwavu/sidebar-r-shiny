#' Create sidebar link
#' 
#' @param id input id for the link
#' @param label Label
#' @param class Bootstrap classes to apply to the link
#' @param active Whether this should be the active link
#' @return tagList with a tags$li
create_sidebar_link <- \(
  id,
  label,
  class = "link-body-emphasis d-inline-flex text-decoration-none rounded w-100",
  active = FALSE
) {
  if (active) {
    class <- paste(class, "active")
  }
  
  tagList(
    tags$li(
      actionLink(
        inputId = id,
        label = label,
        class = class
      )
    )
  )
}
