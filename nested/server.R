server <- function(input, output, session) {
  sidebar_link_ids <- c(
    "overview", "updates", "reports",
    "weekly", "monthly", "annually",
    "new_orders", "processed_orders", "shipped_orders", "returned_orders",
    "new_account", "profile", "account_settings", "sign_out"
  )
  # add observers to switch to the clicked link's tab:
  lapply(sidebar_link_ids, \(id) {
    observeEvent(input[[id]], {
      freezeReactiveValue(input, "tabs")
      updateTabsetPanel(session = session, inputId = "tabs", selected = id)
    })
  })
}
