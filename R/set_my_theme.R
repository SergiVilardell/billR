#' Set theme for my plots
#'
#' This function sets the theme I use for most of my plots
#' @return Nothing.
#' @keywords Theme, Plot
#' @export
#' @examples
#' set_my_theme()

set_my_theme <- function(){
  font_add("lmroman", regular = "lmroman12-regular.otf")
  font_add("lmroman", regular = "lmroman10-regular.otf")
  showtext_auto()
  new_theme <- theme_bw() +
    theme(text = element_text(family = "lmroman"),
          panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
          panel.background = element_blank(), axis.line = element_line(colour = "black")
    )
  theme_set(new_theme)
}
