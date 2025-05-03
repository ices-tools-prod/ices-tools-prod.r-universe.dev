
library(jsonlite)

packages <- read_json("packages.json", simplifyVector = TRUE)

packages <- packages[order(packages$url, packages$package), ]
packages <- packages[!duplicated(packages), ]

write_json(packages, "packages.json", auto_unbox = TRUE, pretty = TRUE)
