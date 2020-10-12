#' Load a matrix from a file
#'
#' This function loads a file as a matrix. It assumes that the first column
#' contains the rownames and the subsequent columns are the sample identifiers.
#' Any rows with duplicated row names will be dropped with the first one being
#' kepted.
#'
#' @param infile Path to the input file
#' @return A matrix of the infile
#' @export
load_mat <- function(infile){
  in.dt <- data.table::fread(infile, header = TRUE)
  in.dt <- in.dt[!duplicated(in.dt[,1]), ]
  in.mat <- as.matrix(in.dt[, -1, with = FALSE])
  rownames(in.mat) <- unlist(in.dt[, 1, with = FALSE])
  in.mat
}

#' add Math
#'
#' This function returns a result adds two parameters
#' @param a math parameter 1
#' @param b math parameter 2
#' @return result
#' @export
add <- function(a, b) {
  return (a + b)
}

#' minus Math
#'
#' This function returns a result minus two parameters
#' @param a math parameter 1
#' @param b math parameter 2
#' @return result
#' @export
minus <- function(a, b) {
  return (a - b)
}

#' Multiply Math
#'
#' This function returns a result multiply two parameters
#' @param a math parameter 1
#' @param b math parameter 2
#' @return result
#' @export
multiple <- function(a, b) {
  return (a * b)
}

#' Divide Math
#'
#' This function returns a result divide two parameters
#' @param a math parameter 1
#' @param b math parameter 2
#' @return result
#' @export
divide <- function(a, b) {
  return (a / b)
}
