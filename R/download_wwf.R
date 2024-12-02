#' Download WWF dataset
#'
#' @description 
#' What does the function do ?
#'
#' @return 
#' What does the function return ?
#' 
#' @export

download_wwf <- function(){
  dir_wwfmammals_data <- here::here("01_raw_data", "wildfinder", "raw_wwf_mammals.csv")
  dir_wwfecolist_data <- here::here("01_raw_data", "wildfinder", "raw_wwf_ecolist.csv")
  dir_wwfecospec_data <- here::here("01_raw_data", "wildfinder", "raw_wwf_ecospec.csv")
  
  utils::download.file(url="https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-mammals_list.csv", 
                       destfile=dir_wwfmammals_data) 
  utils::download.file(url="https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_list.csv", 
                       destfile=dir_wwfecolist_data) 
  utils::download.file(url="https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_species.csv", 
                       destfile=dir_wwfecospec_data) 
  return(0)
}