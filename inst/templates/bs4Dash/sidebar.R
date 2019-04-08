sidebar <- bs4DashSidebar(
  title = "Boilerplate", 
  skin = "dark",
  status = "primary",
  brandColor = "gray-light", 
  url = NULL, 
  src = NULL, 
  elevation = 4,
  opacity = 0.8,
  
  bs4SidebarMenu(
    bs4SidebarHeader("Menu Title"),
    bs4SidebarMenuItem(tabName = "item1", icon = "dashboard", "Item 1"),
    bs4SidebarMenuItem(tabName = "item2", icon = "th", "Item 2")
  )
)