# If pandoc is not installed, we can use installr to install it.
# Note: the following code tests whether the installr package is installed
# and then installs it if it isn't. You need to use the require() function
# for this. library() does not return any values; require() returns FALSE
# if the package isn't loaded successfully, and TRUE if it is.
# For more info, Karl Broman's tutorial is excellent: http://kbroman.org/knitr_knutshell/

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

# 2. Reshaping and manipulating data
render("2.reshaping_manipulating.Rmd",
  output_format = html_document(number_sections=TRUE, toc=TRUE),
  output_dir = file.path(parent, 'html'),
  output_file = "2.reshaping_manipulating.html")

browseURL(paste('file://', file.path(parent, 'html','2.reshaping_manipulating.html'), sep=''))

# # ggplot and ggvis
# render(".Rmd",
  # output_format = html_document(number_sections=TRUE, toc=TRUE),
  # output_dir = file.path(parent, 'html'),
  # output_file = ".html")

# browseURL(paste('file://', file.path(parent, 'html','.html'), sep=''))


