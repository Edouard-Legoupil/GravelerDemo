# WARNING - Generated by {fusen} from dev/function_documentation.Rmd: do not edit by hand

#' Run the Shiny Application
#' 
#' 
#' @param onStart A function that will be called before the app is actually run.
#' This is only needed for \code{shinyAppObj}, since in the \code{shinyAppDir}
#' case, a \code{global.R} file can be used for this purpose.

#' @param options Named options that should be passed to the \code{runApp} call
#' (these can be any of the following: "port", "launch.browser", "host", "quiet",
#' "display.mode" and "test.mode"). You can also specify \code{width} and
#' \code{height} parameters which provide a hint to the embedding environment
#' about the ideal height/width for the app.

#' @param enableBookmarking Can be one of \code{"url"}, \code{"server"}, or
#' \code{"disable"}. The default value, \code{NULL}, will respect the setting from
#' any previous calls to  \code{\link[shiny:enableBookmarking]{enableBookmarking()}}. See 
#' \code{\link[shiny:enableBookmarking]{enableBookmarking()}}
#' for more information on bookmarking your app.

#' @param uiPattern A regular expression that will be applied to each \code{GET}
#' request to determine whether the \code{ui} should be used to handle the
#' request. Note that the entire request path must match the regular
#' expression in order for the match to be considered successful.
#' 
#' 
#' @param ... arguments to pass to golem_opts.
#' See `?golem::get_golem_options` for more details.
#'
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
#' 
#' @return a shiny app
#' 
#' @export
#' @examples
#' # run_app()

run_app <- function(
    onStart = NULL,
    options = list(),
    enableBookmarking = NULL,
    uiPattern = "/",
    ...
) {
  with_golem_options(
    app = shinyApp(
      ui = app_ui,
      server = app_server,
      onStart = onStart,
      options = options,
      enableBookmarking = enableBookmarking,
      uiPattern = uiPattern
    ),
    golem_opts = list(...)
  )
}

