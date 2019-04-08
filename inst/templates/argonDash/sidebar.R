sidebar <- argonDashSidebar(
  dropdownMenus = NULL, 
  id = "sidebar", 
  brand_url = NULL,
  brand_logo = NULL, 
  vertical = TRUE, 
  side = "left",
  size = "md", 
  skin = "light",
  background = "white",
  
  argonSidebarHeader(title = "Menu title"),
  
  argonSidebarMenu(
    argonSidebarItem("Item 1", tabName = "item1", icon = NULL, icon_color = NULL),
    argonSidebarItem("Item 2", tabName = "item2", icon = NULL, icon_color = NULL)
  )
  
)