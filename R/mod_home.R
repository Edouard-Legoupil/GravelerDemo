# Module UI Home
#' @title mod_home_ui and mod_home_server
#' @description A shiny module.
#' @import shiny
#' @import shinydashboard
#' @noRd
#' @keywords internal

mod_home_ui <- function(id) {
	ns <- NS(id)
	tabItem(
		tabName = "home",
		absolutePanel(  ## refers to a css class
		  id = "splash_panel", top = 0, left = 0, right = 0, bottom = 0,
		  ### Get the name for your tool
		  p(
		    tags$span("Graveler ", style = "font-size: 60px"),
		    tags$span(" Tutorial", style = "font-size: 24px")
		  ),
		  br(),
		  ### Then a short explainer
		  p("To reproduce it, go through:",
		    style = "font-size: 20px, text-align: left;"),
		  tags$ol(
		         tags$li("Learn how to ", tags$a(
		           href="https://unhcrverse.github.io/unhcrverse/learn/02.Tidyverse.html", 
		           "build a script to manipulate and plot data"),
		           style = "font-size: 16px; text-align: left;" ), 
		         
		         tags$li("Learn how to ", tags$a(
		           href="https://unhcrverse.github.io/unhcrverse/learn/03.Functions.html",
		           "turn a script into a function"),
		           style = "font-size: 16px; text-align: left;" ), 
		         
		         tags$li("Learn how to ", tags$a(
		           href="https://unhcrverse.github.io/unhcrverse/learn/10.Package_Knowledge.html",
		           "turn a function into a package"),
		           style = "font-size: 16px; text-align: left;" ), 
		         
		         tags$li("Learn how to ", tags$a(
		           href="https://unhcrverse.github.io/unhcrverse/learn/11.Simplify_with_companionApp.html",
		           "turn a package into an app"),
		           style = "font-size: 16px; text-align: left;" ), 
		      ) ,
		  br(),
		  br(),
		  p(tags$i( class = "fa fa-github"),
		    "App built with ",
		    tags$a(href="https://edouard-legoupil.github.io/graveler/",
		           "{graveler}" ),
		    " -- report ",
		    tags$a(href="https://github.com/Edouard-Legoupil/graveler/issues/new/choose",
		           "issues here." ,
		    ),
		    style = "font-size: 10px")
		)
	)
}

# Module Server
#' @import shiny
#' @import shinydashboard
#' @noRd
#' @keywords internal

mod_home_server <- function(input, output, session) {
	ns <- session$ns

}

## copy to body.R
# mod_home_ui("home_ui_1")

## copy to app_server.R
# callModule(mod_home_server, "home_ui_1")

## copy to sidebar.R
# menuItem("displayName",tabName = "home",icon = icon("user"))

