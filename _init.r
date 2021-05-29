# https://stackoverflow.com/questions/38068774/rstudio-suddenly-stopped-showing-plots-in-the-plot-pane
# https://community.rstudio.com/t/the-graph-not-showing-up-in-the-plots-pane-in-rstudio/30671/5
# options(device = "RStudioGD")
options(device = "windows")

# Set WD
project_wd = 'C:/dev/r_youtube'
setwd(project_wd)
# Remove al objects from memory
detach()
rm(list=ls())