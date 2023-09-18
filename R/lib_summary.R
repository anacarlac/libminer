# create function lib_summary to install packages and get a list of packages that are installed in the system and in the user system
lib_summary <- function() {
  pkgs <- utils::installed.packages() # get the packages
  pkg_tbl <- table(pkgs[, "LibPath"]) # get the table with packages
  pkg <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turns the table in a dataframe object
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df

}
