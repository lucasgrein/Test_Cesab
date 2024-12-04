library(targets)
library(tarchetypes)
library(ggplot2)

source(here::here("R", "read_wwf.R"))
source(here::here("R", "select_family.R"))
source(here::here("R", "join_all_tables.R"))
source(here::here("R", "count_ecoregions.R"))
source(here::here("R", "graph_ecoregions.R"))

list(
  tar_target(name=list_wwf, command=read_wwf() ),
  tar_target(name=mammals, command=list_wwf[[1]] ),
  tar_target(name=ecospec, command=list_wwf[[2]] ),
  tar_target(name=selected_family, command=select_family(mammals, "Ursidae") ),
  tar_target(name=jointed_tab, command=join_all_tables(selected_family, ecospec) ),
  tar_target(name=counted_ecoregions, command=count_ecoregions(jointed_tab) ),
  tar_target(name=plotted_ecoregions, command=graph_ecoregions(counted_ecoregions) ),
  tarchetypes::tar_quarto(report, "index.qmd")
)