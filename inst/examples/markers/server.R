library(leafletDVF)

coordParis <- c(48.864716, 2.349014)
coordLondon <- c(51.5085300, -0.1257400)

shinyServer(function(input, output, session) {
  
  map <- createLeafletMap(session, "map")
  
  session$onFlushed(once = TRUE, function() {
    map$addCircleMarker(coordParis[1], coordParis[2], 10, "Paris")
    map$addMarker(coordLondon[1], coordLondon[2], "London")
  })
  
  observe({
    event <- input$map_marker_click
    if (is.null(event))
      return()
    map$showPopup(event$lat, event$lng, event$id)
    
  })
  
})