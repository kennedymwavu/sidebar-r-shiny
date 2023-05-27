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

      # sidebar:
      tags$div(
        class = "d-flex flex-column flex-shrink-0 p-3 text-bg-dark",
        style = "width: 280px;",

        # logo and app title:
        tags$a(
          href = "/",
          class = paste(
            "d-flex align-items-center mb-3 mb-md-0 me-md-auto",
            "text-white text-decoration-none"
          ),
          tags$img(
            class = "bi pe-none me-2",
            src = file.path("bootstrap-logo.png"),
            width = "40"
          ),
          tags$span(
            class = "fs-4",
            "Sidebar"
          )
        ),
        tags$hr(),

        # sidebar nav:
        tags$ul(
          id = "sidebar_ul",
          class = "nav nav-pills flex-column mb-auto",
          sidebar_li(
            link_id = "home",
            link_class = "nav-link active text-white",
            aria_current = "page",
            icon_class = "bi bi-house-door pe-none me-2",
            label = " Home "
          ),
          sidebar_li(
            link_id = "dashboard",
            icon_class = "bi bi-speedometer2 pe-none me-2",
            label = " Dashboard "
          ),
          sidebar_li(
            link_id = "orders",
            icon_class = "bi bi-table pe-none me-2",
            label = " Orders "
          ),
          sidebar_li(
            link_id = "products",
            icon_class = "bi bi-grid pe-none me-2",
            label = " Products "
          ),
          sidebar_li(
            link_id = "customers",
            icon_class = "bi bi-person-circle pe-none me-2",
            label = " Customers "
          )
        ),
        tags$div(
          class = "dropdown",
          tags$a(
            href = "#",
            class = paste(
              "d-flex align-items-center text-white text-decoration-none",
              "dropdown-toggle"
            ),
            "data-bs-toggle" = "dropdown",
            "aria-expanded" = "false",
            tags$img(
              src = "me.jpg",
              width = "32",
              height = "32",
              class = "rounded-circle me-2"
            ),
            tags$strong("Mwavu")
          ),
          tags$ul(
            class = "dropdown-menu dropdown-menu-dark text-small shadow",
            dropdown_li(label = "New project"),
            dropdown_li(label = "Settings"),
            dropdown_li(label = "Profile"),
            tags$li(
              tags$hr(class = "dropdown-divider")
            ),
            dropdown_li(label = "Sign out")
          )
        )
      ),
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
