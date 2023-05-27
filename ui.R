ui <- bslib::page(
  title = "Sidebar",
  theme = bslib::bs_theme(version = 5),
  lang = "en",
  shinyjs::useShinyjs(),
  tags$head(
    tags$meta(charset = "utf-8"),
    tags$meta(
      name = "viewport",
      content = "width=device-width, initial-scale=1"
    ),

    # bootstrap css:
    tags$link(
      href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css",
      rel = "stylesheet",
      integrity = "sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ",
      crossorigin = "anonymous"
    ),

    # bootstrap icons:
    tags$link(
      rel = "stylesheet",
      href = "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
    )
  ),
  tags$body(
    tags$main(
      class = "d-flex flex-nowrap min-vh-100",

      sidebar(),
      tags$div(
        # tab panels:
        tabsetPanel(
          id = "tabs",
          selected = "home",
          type = "hidden",
          tabPanelBody(
            value = "home",
            tags$h1("East or west, home is the best!")
          ),
          tabPanelBody(
            value = "dashboard",
            tags$h1("This will contain the dashboard")
          ),
          tabPanelBody(
            value = "orders",
            tags$h1("Orders will appear here")
          ),
          tabPanelBody(
            value = "products",
            tags$h1("Our products are unique and of best value")
          ),
          tabPanelBody(
            value = "customers",
            tags$h1("Here is what our customers say")
          )
        )
      )
    ),

    # bootstrap js:
    suppressDependencies("bootstrap"),
    tags$script(
      src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js",
      integrity = "sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe",
      crossorigin = "anonymous"
    ),

    # sidebar js:
    tags$script(src = "sidebar.js")
  )
)
