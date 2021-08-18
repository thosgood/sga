#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd",
                      "bookdown::gitbook",
                      output_dir = "build",
                      config_file = "_bookdown.yml")
print('SGA 2 done!')