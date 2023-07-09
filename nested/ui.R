ui <- tags$html(
  lang = "en",
  `data-bs-theme` = "auto",
  tags$head(
    tags$meta(charset = "utf-8"),
    tags$meta(name = "viewport", content = "width=device-width, initial-scale=1"),
    tags$title("Sidebar Demo"),
    # bootstrap css:
    tags$link(
      href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css",
      rel = "stylesheet",
      integrity = "sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM",
      crossorigin = "anonymous"
    ),
    # styles.css:
    tags$link(
      href = "styles.css",
      rel = "stylesheet"
    ),
    # google fonts:
    tags$link(rel = "preconnect", href = "https://fonts.googleapis.com"),
    tags$link(rel = "preconnect", href = "https://fonts.gstatic.com", crossorigin = NA),
    tags$link(
      href = "https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap",
      rel = "stylesheet"
    )
  ),
  tags$body(
    class = "bg-light",
    bootstrapLib(theme = bslib::bs_theme(version = 5)),
    suppressDependencies("bootstrap"),
    tags$div(
      class = "d-flex vh-100",
      # sidebar
      tags$div(
        class = "flex-shrink-0 p-3 bg-white border-end shadow-sm",
        style = "width: 280px;",
        tags$a(
          href = "https://shiny.posit.co/",
          class = paste(
            "d-flex align-items-center pb-3 mb-3 link-body-emphasis",
            "text-decoration-none border-bottom"
          ),
          tags$img(
            src = "shiny-solo.png",
            alt = "Shiny Logo",
            width = 50,
            height = 25
          ),
          tags$span(
            class = "fs-5 fw-semibold ps-2",
            "Sidebar Showcase"
          )
        ),
        tags$ul(
          class = "list-unstyled ps-0",
          tags$li(
            class = "mb-1",
            create_sidebar_menu_header(
              title = "Home",
              data_bs_target = "#home-collapse",
              aria_expanded = "true"
            ),
            tags$div(
              class = "collapse show",
              id = "home-collapse",
              tags$ul(
                class = "btn-toggle-nav list-unstyled fw-normal pb-1 small",
                create_sidebar_link(id = "overview", label = "Overview", active = TRUE),
                create_sidebar_link(id = "updates", label = "Updates"),
                create_sidebar_link(id = "reports", label = "Reports")
              )
            )
          ),
          tags$li(
            class = "mb-1",
            create_sidebar_menu_header(
              title = "Dashboard",
              data_bs_target = "#dashboard_collapse"
            ),
            tags$div(
              class = "collapse",
              id = "dashboard_collapse",
              tags$ul(
                class = "btn-toggle-nav list-unstyled fw-normal pb-1 small",
                create_sidebar_link(id = "weekly", label = "Weekly"),
                create_sidebar_link(id = "monthly", label = "Monthly"),
                create_sidebar_link(id = "annually", label = "Annually")
              )
            )
          ),
          tags$li(
            class = "mb-1",
            create_sidebar_menu_header(
              title = "Orders",
              data_bs_target = "#orders_collapse"
            ),
            tags$div(
              class = "collapse",
              id = "orders_collapse",
              tags$ul(
                class = "btn-toggle-nav list-unstyled fw-normal pb-1 small",
                create_sidebar_link(id = "new_orders", label = "New"),
                create_sidebar_link(id = "processed_orders", label = "Processed"),
                create_sidebar_link(id = "shipped_orders", label = "Shipped"),
                create_sidebar_link(id = "returned_orders", label = "Returned")
              )
            )
          ),
          tags$li(class = "border-top my-3"),
          tags$li(
            class = "mb-1",
            create_sidebar_menu_header(
              title = "Account",
              data_bs_target = "#account_collapse"
            ),
            tags$div(
              class = "collapse",
              id = "account_collapse",
              tags$ul(
                class = "btn-toggle-nav list-unstyled fw-normal pb-1 small",
                create_sidebar_link(id = "new_account", label = "New..."),
                create_sidebar_link(id = "profile", label = "Profile"),
                create_sidebar_link(id = "account_settings", label = "Settings"),
                create_sidebar_link(id = "sign_out", label = "Sign Out")
              )
            )
          ),
        )
      ),
      # main
      tags$div(
        class = "p-3",
        tabsetPanel(
          id = "tabs",
          type = "hidden",
          tabPanelBody(
            value = "overview",
            tags$h3("Overview")
          ),
          tabPanelBody(
            value = "updates",
            tags$h3("Updates")
          ),
          tabPanelBody(
            value = "reports",
            tags$h3("Reports")
          ),
          tabPanelBody(
            value = "weekly",
            tags$h3("Weekly Dashboard")
          ),
          tabPanelBody(
            value = "monthly",
            tags$h3("Monthly Dashboard Summary")
          ),
          tabPanelBody(
            value = "annually",
            tags$h3("Annual Dashboard Analytics")
          ),
          tabPanelBody(
            value = "new_orders",
            tags$h3("New Orders")
          ),
          tabPanelBody(
            value = "processed_orders",
            tags$h3("Processed Orders")
          ),
          tabPanelBody(
            value = "shipped_orders",
            tags$h3("Here are the shipped orders")
          ),
          tabPanelBody(
            value = "returned_orders",
            tags$h3("Returned orders here")
          ),
          tabPanelBody(
            value = "new_account",
            tags$h3("Create New Account")
          ),
          tabPanelBody(
            value = "profile",
            tags$h3("View your profile")
          ),
          tabPanelBody(
            value = "account_settings",
            tags$h3("Your account settings")
          ),
          tabPanelBody(
            value = "sign_out",
            tags$h3("You're now signed out")
          )
        )
      )
    ),
    # bootstrap js:
    tags$script(
      src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js",
      integrity = "sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz",
      crossorigin = "anonymous"
    ),
    # script.js:
    tags$script(src = "script.js")
  )
)
