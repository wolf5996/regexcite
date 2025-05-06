#' Split a string into a vector of substrings
#'
#' @param x A character vector with one element
#' @param split What to split on.
#'
#' @return A character vector with the substrings.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' strsplit1(x, split = ",")
strsplit1 <- function(x, split){
  strsplit(x, split = split)[[1]]
}
