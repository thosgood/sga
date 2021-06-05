#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd",
                      "bookdown::gitbook",
                      output_dir = "book",
                      config_file = "_bookdown.yml")
print('Done!')