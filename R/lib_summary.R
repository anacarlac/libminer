#' R Library Summary
#'
#'Provides a brief summary of the package libraries on
#'your machine
#'
#' @param sizes A logical value indicating whether to calculate sizes.
#'  Default 'FALSE'
#'
#' @return A data.frame containing the count of packages in each of the user's
#'   libraries. A `lib_size` column is included if `sizes = TRUE`.
#'
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(sizes = TRUE)
lib_summary <- function(sizes= FALSE) {
  if (!is.logical(sizes)) {
    stop("sizes must be logical value (TRUE/FALSE")
  }

  pkgs <- utils::installed.packages() # get the packages
  pkg_tbl <- table(pkgs[, "LibPath"]) # get the table with packages
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turns the table in a dataframe object
  names(pkg_df) <- c("Library", "n_packages")

  if (isTRUE(sizes)) {
      pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1)
    )
  }

  pkg_df

}





