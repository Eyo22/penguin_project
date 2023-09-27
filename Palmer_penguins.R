#install necessary package
install.packages("tidyverse")
#load the library
#library(dplyr)
library(tidyverse)
#load the penguin data into R
penguins <- read.table("data/penguin_data.txt", header = T)
#view part of the data
glimpse(penguins)
#run a linear regression
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model1)
#create a nice plot in ggplot2
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) + geom_point() + stat_smooth(method = "lm")
#save plot in figs folder
ggsave("figs/1_flipper_bodymass_regression.png")
#subset the data to female penguins only
penguins_female <- subset(penguins, sex == "female")
#save the edited dataset
write.table(penguins_female, "results/1_penguin_female_only.txt", quote = F, col.names = F, sep= "\t")

?"ggplot"
#git config --global user.email "eyo.alexander@gmail.com"
#git config --global user.name "Eyo22"
#I can use git