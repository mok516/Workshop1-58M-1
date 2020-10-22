#set working directory
setwd("~/UoY/2020-2021/Data Analysis/Workshop1-58M")

#read in data
chaff <- read.table("chaffwk4.txt", header = TRUE)

#tidy data
library("tidyverse") 

chaff2 <- pivot_longer(data = chaff,cols = everything(),
                       names_to = "sex", values_to = "mass")
str(chaff2)

#write newfly formatted table
file <-  "C:\Users\Grace\Documents\UoY\2020-2021\Data Analysis\Workshop1-58M"
write.table(chaff2, 
            file, 
            quote = FALSE,
            row.names = FALSE)

#summarise and analyse the data
chaff2 %>%
  group_by(sex) %>%
  summarise(mean = mean(mass),
            n = length(mass))
#females  20.5    20
#males    22.3    20

