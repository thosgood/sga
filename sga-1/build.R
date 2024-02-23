#!/usr/bin/env Rscript

renv::restore()
bookdown::render_book("index.Rmd",
                      "bookdown::gitbook",
                      output_dir = "build",
                      config_file = "_bookdown.yml")
print('SGA 1 done!')