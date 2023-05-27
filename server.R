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
    freezeReactiveValue(input, "tabs")
    updateTabsetPanel(
      session = session,
      inputId = "tabs",
      selected = id
    )

    # switch to the new tab whenever the li element is clicked:
    shinyjs::onclick(
      id = id,
      expr = {
        # switch to the new tab:
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
