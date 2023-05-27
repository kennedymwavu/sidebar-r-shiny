sidebar <- \(...) {
  tagList(
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
    )
  )
}
