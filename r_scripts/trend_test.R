library("tidyverse")
setwd(getSrcDirectory(function(){})[1])


data <- read_csv("../data_sets/S13LeagueOfLegendsData.csv") %>%
    filter(Name == "Qiyana", (Patch == "13_3" | Patch == "13_4")) %>% 
    select("Name", "Patch", "Role", "Pick %", "Ban %")

print(data)