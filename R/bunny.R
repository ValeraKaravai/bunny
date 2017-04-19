#' honey: package to deal with good and bad bees
#'
#' Extremely important package for every People
#'
#' I've written this package a long time ago in a far-far galaxy.
#'
#' @name bunny
#' @docType package


#' Evaluates the amount of good honey given the tree
#'
#' Evaluates the amount of good honey given the tree
#'
#' The amount of honey is estimated using the latest mcmc methods.
#'
#' @param name 
#' @return bunny
#' @export 
#' @examples GetBetter('Bear', 5)
#' GetBetter(name, n)

GetBetter <- function(name, n) {
  replicate(n, paste(name, 'is a bunny'))
}