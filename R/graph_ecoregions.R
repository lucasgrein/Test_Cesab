graph_ecoregions <- function(tab){
  plot1 <- ggplot(tab) +
    geom_bar(stat="identity", aes(x=sci_name, y=nb_ecor) ) +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  return(plot1)
}
