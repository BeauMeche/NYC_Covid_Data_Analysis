library(tidyverse)
library(janitor)
library(tidyr)

# random note: 
# https://stackoverflow.com/questions/61367186/pivot-longer-into-multiple-columns

# not sure how she moved her file paths around but they were broken when I forked
# so I just manually loaded it into the global environ. for time's sake

x <- boroughs_by_age

# must address boroughs by name, at least for now
# drop prefixes from name, add a location col to all, then Rbind all sets together
# maybe this could be looped?

view(x)

bk <- x %>% 
select(group, starts_with("BK")) %>% 
  mutate(...Location = "BK") %>%
  rename(...group = group)

names(bk) <- substring(names(bk),4,21)

bx <- x%>% 
  select(group, starts_with("BX")) %>% 
  mutate(...Location = "BX") %>% 
  rename(...group = group)

names(bx) <- substring(names(bx),4,21)

mn <- x%>% 
  select(group, starts_with("MN")) %>% 
  mutate(...Location = "MN") %>% 
  rename(...group = group)

names(mn) <- substring(names(mn),4,21)


qn <- x%>% 
  select(group, starts_with("QN")) %>% 
  mutate(...Location = "QN") %>% 
  rename(...group = group)

names(qn) <- substring(names(qn),4,21)

si <- x%>% 
  select(group, starts_with("SI")) %>% 
  mutate(...Location = "SI") %>% 
  rename(...group = group)

names(si) <- substring(names(si),4,21)

# bind all regions together 

remake1 <- bind_rows(bk, bx, mn, qn, si) %>% 
  clean_names()

