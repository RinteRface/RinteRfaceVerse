sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Item 1", tabName = "item1", icon = icon("dashboard")),
    menuItem("Item 2", tabName = "item2", icon = icon("th"))
  )
)