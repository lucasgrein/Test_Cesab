read_wwf <- function(){
  ecospec <- readr::read_csv( here::here("01_raw_data","wildfinder","raw_wwf_ecospec.csv") )
  mammals <- readr::read_csv( here::here("01_raw_data","wildfinder","raw_wwf_mammals.csv") )
  
  return( list(mammals, ecospec) )
}
