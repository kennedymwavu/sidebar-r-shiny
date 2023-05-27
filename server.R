server <- function(input, output, session) {
  sidebar_ids <- c("home", "dashboard", "orders", "products", "customers")
  switch_tab <- \(id) {
    freezeReactiveValue(input, "tabs")
    updateTabsetPanel(
      session = session,
      inputId = "tabs",
      selected = id
    )
  }
  lapply(sidebar_ids, \(id) {
    shinyjs::onclick(id, expr = switch_tab(id))
  })

  observeEvent(input$add_tab, {
    id <- paste0("tab", as.numeric(Sys.time()))
    # append the tab:
    appendTab(
      inputId = "tabs",
      tab = tabPanelBody(
        value = id,
        tags$h1(paste("This is a dynamically inserted tab!", id))
      )
    )

    # add the sidebar li:
    insertUI(
      selector = "#sidebar_ul li:last",
      where = "afterEnd",
      ui = tagList(
        sidebar_li(
          link_id = id,
          icon_class = NULL,
          label = id
        )
      )
    )

    # switch to the new tab:
    switch_tab(id)

    # switch to the new tab whenever the li element is clicked:
    shinyjs::onclick(id = id, expr = switch_tab(id))
  })
}
