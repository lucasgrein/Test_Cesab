library(rcompendium)

# 1. Create README.md

utils::file.edit(here::here("README.md"))

#Conversion Rmd -> md 
rmarkdown::render("README.Rmd")

#Conversion qmd -> md 
quarto::quarto_render("README.qmd")

# 2. Create DESCRIPTION

rcompendium::add_description()

# 3. Select a licence

#See : https://choosealicense.com

add_license(license = "GPL-2")

# 4. Create sub-repository

rcompendium::add_compendium(compendium = c("01_raw_data", "02_derived_data", "03_analyses", "04_R", "05_figures", "06_outputs"))

# 5. Create R script for data download

utils::file.edit(here::here("03_analyses", "download-data.R"))

# 6. Create directory for datasets

dir_pant <- here::here("01_raw_data", "pantheria")
dir_wwf <- here::here("01_raw_data", "wildfinder")

dir.create(dir_pant)
dir.create(dir_wwf)

# 7. Create functions for data download

usethis::use_r("download_pantheria")
usethis::use_r("download_wwf")

# 8. Adding documentation

# To do later
# roxygen2::roxygenise( here::here("R", "download_pantheria.R") )
# roxygen2::roxygenise( here::here("R", "download_wwf.R") )

# 9. Adding + installing packages dependances

usethis::use_package(package = "here")
usethis::use_package(package = "utils")

# 10. Loading the whole project

devtools::install_deps(upgrade = "never")
devtools::load_all()

# 11. Create make.R

utils::file.edit(here::here("make.R"))

# 12. Create Test for commit

utils::file.edit(here::here("Essai_pour_git.md"))
utils::file.edit(here::here("Essai_pour_git_2.md"))
utils::file.edit(here::here("Essai_pour_git_3.md"))
