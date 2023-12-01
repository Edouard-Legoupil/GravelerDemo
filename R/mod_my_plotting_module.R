#' Module UI
 
#' @title mod_my_plotting_module_ui and mod_my_plotting_module_server
#' @description A shiny module.
#' @description A shiny module.
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#' @import shiny 
#' @import shinydashboard 
#' @keywords internal
 
mod_my_plotting_module_ui <- function(id) {
	ns <- NS(id)
	tabItem(
		tabName = "my_plotting_module",
				 fluidRow(
				 shinydashboard::box(
				  title = "My First App!",
				  status = "info",  solidHeader = FALSE,  collapsible = TRUE,  width = 12,
## do not forget that all elements ID of the GUI needs to be called with ns("ID")....
				  fluidRow(
  				    column( width = 4,
  				      selectizeInput(inputId = ns("countryname"),
  				        label = " Select Country", 
  				        choices = refugees::population |>
  				                       dplyr::arrange(coa_name) |>
  				                       dplyr::select(coa_name) |>
  				                       dplyr::distinct()  |>
  				                       dplyr::pull(coa_name) |>
  				                       purrr::set_names(refugees::population |>
  				                                          dplyr::arrange(coa_name) |>
  				                                          dplyr::select(coa_name) |>
  				                                          dplyr::distinct()  |>
  				                                          dplyr::pull(coa_name) ), 
  				                     selected = "Peru", 
  				                     multiple = FALSE, options = NULL),
  				      selectInput(inputId = ns("year"),
  				                  label = "  Select Year",
  				                  choices = list("2022" = "2022",
  				                                 "2021" = "2021",
  				                                 "2020" = "2020"),
  				                  selected = "2022")				    
  				      ),
  				    column(  width = 8,
  				      plotOutput(outputId = ns("plot"),
  				                 width = "100%", height = "400px")
  				      ) ) ) )	)
}
 
#' Module Server
#' @noRd 
#' @import shiny 
#' @import tidyverse 
#' @keywords internal
 
mod_my_plotting_module_server <- function(input, output, session, AppReactiveValue) {
	ns <- session$ns
## add here the server logic part of your module....
	output$plot <- renderPlot({
	   plot_top10_by_country_and_year( year = as.numeric(input$year), 
	                                  countryname = input$countryname) })
}
 
## copy to body.R
# mod_my_plotting_module_ui("my_plotting_module_ui_1")
 
## copy to sidebar.R
# shinydashboard::menuItem("displayName",tabName = "my_plotting_module",icon = icon("user"))
 
## and copy to app_server.R
# callModule(mod_my_plotting_module_server, "my_plotting_module_ui_1", AppReactiveValue)
 
