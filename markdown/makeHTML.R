# If pandoc is not installed, we can use installr to install it.
# Note: the following code tests whether the installr package is installed
# and then installs it if it isn't. You need to use the require() function
# for this. library() does not return any values; require() returns FALSE
# if the package isn't loaded successfully, and TRUE if it is.
# For more info, I recommend Karl Broman's tutorial: http://kbroman.org/knitr_knutshell/

# ifelse(!require(installr), install.packages("installr"), "already installed")
# install.pandoc()

library(rmarkdown)

parent <- dirname(getwd())

# 0. tips for downloading data in R
render("0.downloading_data.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "0.downloading_data.html")
  
browseURL(paste('file://', file.path(parent, 'html','0.downloading_data.html'), sep=''))

# 1. Managing large files
render("1.managing_large_files.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "1.managing_large_files.html")

browseURL(paste('file://', file.path(parent, 'html','1.managing_large_files.html'), sep=''))

# 2.assessing_parsing_errors
render("2.assessing_parsing_errors.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "2.assessing_parsing_errors.html")

browseURL(paste('file://', file.path(parent, 'html','2.assessing_parsing_errors.html'), sep=''))

# 3.dplyr_data.table
render("3.dplyr_data.table.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "3.dplyr_data.table.html")

browseURL(paste('file://', file.path(parent, 'html','3.dplyr_data.table.html'), sep=''))

# 4. split_apply_combine_plot
render("4.split_apply_combine_plot.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "4.split_apply_combine_plot.html")

browseURL(paste('file://', file.path(parent, 'html','4.split_apply_combine_plot.html'), sep=''))

# 5.ggvis
render("5.ggvis.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "5.ggvis.html")

browseURL(paste('file://', file.path(parent, 'html','5.ggvis.html'), sep=''))
