library(leafletDVF)

shinyUI(fluidPage(
  leafletMap("map", 600, 400, options = list(
    center = c(48.8534100, -2.3488000),
    zoom = 4
  ))
))
