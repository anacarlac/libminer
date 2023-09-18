# Continuation from WS R package deveopment pt 1

# Load packages
library(devtools)

# Active Git
use_git_config(
  user.name = "Ana Crispim",
  user.email = "anacarlacrispim@gmail.com"
)

# Initialises git tab in R studio
use_git()

# Because we are loading use_devtools(), we can automate this process for every time we load R
# Keep mind this is an exception because it is not advisable to load things automatically
# Use usethis::use_devtools() first and then add the loop in the open file of .Rprofile
usethis::use_devtools()

# When to use require or library? Require does not require instalation
# If we add a .Rprofile in a .Rproj, it will overcome the Global options

# Now we restart R, ctrl + shift + F10 and start adding code in the /R file
# The first R script is called lib_summary
use_r("lib_summary")

# Now restart and load_all
load_all()
2

