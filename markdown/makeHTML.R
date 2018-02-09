# If pandoc is not installed, we can use installr to install it.
# Note: the following code tests whether the installr package is installed
# and then installs it if it isn't. You need to use the require() function
# for this. library() does not return any values; require() returns FALSE
# if the package isn't loaded successfully, and TRUE if it is.
# For more information on knitr, I recommend Karl Broman's tutorial:
# http://kbroman.org/knitr_knutshell/

# ifelse(!require(installr), install.packages("installr"), "already installed")
# install.pandoc()

library(rmarkdown)

parent <- dirname(getwd())

# 1. tips for downloading data in R
render("1.downloading_data.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "1.downloading_data.html")
  
browseURL(paste("file://",
  file.path(parent, "html", "1.downloading_data.html"), sep = ""))

# 2. managing large files
render("2.managing_large_files.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "2.managing_large_files.html")

browseURL(paste("file://",
  file.path(parent, "html", "2.managing_large_files.html"), sep = ""))

# 3.assessing_parsing_errors
render("3.assessing_parsing_errors.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "3.assessing_parsing_errors.html")

browseURL(paste("file://",
  file.path(parent, "html", "3.assessing_parsing_errors.html"), sep = ""))

# 4.dplyr_data.table
render("4.dplyr_data.table.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "4.dplyr_data.table.html")

browseURL(paste("file://",
  file.path(parent, "html", "4.dplyr_data.table.html"), sep = ""))

# 5. split_apply_combine_plot
render("5.split_apply_combine_plot.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "5.split_apply_combine_plot.html")

browseURL(paste("file://",
  file.path(parent, "html", "5.split_apply_combine_plot.html"), sep = ""))

# 5.ggvis
render("6.ggvis.Rmd",
  output_format = html_document(number_sections = TRUE, toc = TRUE),
  output_dir = file.path(parent, "html"),
  output_file = "6.ggvis.html")

browseURL(paste("file://",
  file.path(parent, "html", "6.ggvis.html"), sep = ""))
