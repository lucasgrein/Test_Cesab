join_all_tables <- function(tab1, tab2){
  tab12 <- merge(x=tab1, y=tab2, by="species_id", all.x=TRUE, all.y=FALSE)
  return(tab12)
}
