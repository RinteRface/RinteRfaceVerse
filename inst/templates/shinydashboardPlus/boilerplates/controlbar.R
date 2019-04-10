controlbar <- rightSidebar(
  background = "light",
  width = 230, 
  .items = NULL,
  rightSidebarTabContent(
    id = 1,
    icon = "desktop",
    title = "Tab 1",
    active = TRUE,
    sliderInput(
      "obs", 
      "Number of observations:",
      min = 0, max = 1000, value = 500
    )
  ),
  rightSidebarTabContent(
    id = 2,
    title = "Tab 2",
    textInput("caption", "Caption", "Data Summary")
  ),
  rightSidebarTabContent(
    id = 3,
    title = "Tab 3",
    icon = "paint-brush",
    numericInput("obs", "Observations:", 10, min = 1, max = 100)
  )
)