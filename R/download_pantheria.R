#' Download PanTHERIA dataset
#'
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in 
#' `data/pantheria/`. This folder will be created if required.
#'
#' @return This function returns the path (`character`) to the downloaded file
#' (e.g. `data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt`).
#' 
#' @export

download_pantheria <- function(){
  dir_pant_data <- here::here("01_raw_data", "pantheria", "raw_pantheria.txt")

  utils::download.file(url="https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt", 
                       destfile=dir_pant_data) 
  return(0)
}