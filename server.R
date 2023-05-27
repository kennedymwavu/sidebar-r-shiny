server <- function(input, output, session) {
  sidebar_ids <- c("home", "dashboard", "orders", "products", "customers")
  lapply(sidebar_ids, \(id) {
    shinyjs::onclick(
      id = id,
      expr = {
        freezeReactiveValue(input, "tabs")
        updateTabsetPanel(
          session = session,
          inputId = "tabs",
          selected = id
        )
      }
    )
  })
}
