#' Server
#'
#' This function is internally used to manage the shinyServer
#'
#' @import shiny
#' @import shinydashboard
#' @noRd
#' @keywords internal
app_server <- function(input, output, session) {

  ## add a reactive value object to pass by elements between objects
  AppReactiveValue <-  reactiveValues()
  # pins::board_register() # connect to pin board if needed
  callModule(mod_home_server, "home_ui_1")
  callModule(mod_my_plotting_module_server, "my_plotting_module_ui_1", AppReactiveValue)
}
