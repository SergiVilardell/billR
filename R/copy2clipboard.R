#' Copy Plots to Clipboard Function
#'
#' This function takes an image file and copies the image into the clipboard. It uses nircmd so it is only available on windows.
#' @param filepath filepath.
#' @return Nothing. Only copies image to clipboard.
#' @keywords Clipboard, Plot
#' @export
#' @examples
#' filepath <- "Plots/foo.png"
#' copy_plot_to_clipboard(filepath)

copy_plot_to_clipboard <- function(filepath = NULL) {
  if (is.character(filepath)) {
    command <- paste0('nircmd clipboard copyimage ', filepath)
    system(command)
  } else {
    stop("Write a valid filepath")
  }
}
