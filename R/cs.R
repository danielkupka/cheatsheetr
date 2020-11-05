#' @title View Cheatsheets
#' @export
cs <- function(x){
  cheatsheet_parameter <- cheatsheet_data %>%
    dplyr::filter(parameter == x) %>%
    dplyr::pull(url)
  url_string <- "https://docs.google.com/viewer?url="
  url_string_2 <- "&embedded=TRUE"
  browseURL(paste0(url_string, cheatsheet_parameter, url_string_2))
}


