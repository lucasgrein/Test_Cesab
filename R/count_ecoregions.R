count_nona <- function(x){
  return( length(x[!is.na(x)]) )
}

count_ecoregions <- function(tab12){
  
  tab12_g <- tab12 |>
    dplyr::group_by(species_id, sci_name) |>
    dplyr::summarise(nb_ecor=count_nona(ecoregion_id) ) |>
    dplyr::ungroup()
  
  return(tab12_g)
  
}
