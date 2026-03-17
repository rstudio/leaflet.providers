library(shiny)
library(leaflet)
library(leaflet.providers)

providers <- names(providers_default()$providers)

ui <- fluidPage(
  titlePanel(paste0("leaflet.providers v", providers_default()$version_num, " Demo")),
  sidebarLayout(
    sidebarPanel(
      selectInput("provider", "Provider:", choices = providers, selected = "OpenStreetMap"),
      width = 3
    ),
    mainPanel(
      leafletOutput("map", height = "600px"),
      width = 9
    )
  )
)

server <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet() |>
      setView(lng = -75.1652, lat = 39.9526, zoom = 12) |>
      addProviderTiles(input$provider)
  })
}

shinyApp(ui, server)
