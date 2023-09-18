#' R Library Summary
#'
#'Provides a brief summary of the package libraries on
#'your machine
#'
#' @return A 'data.frame' containing the count of packages in each
#'         of the user's libraries.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages() # get the packages
  pkg_tbl <- table(pkgs[, "LibPath"]) # get the table with packages
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turns the table in a dataframe object
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df

}
