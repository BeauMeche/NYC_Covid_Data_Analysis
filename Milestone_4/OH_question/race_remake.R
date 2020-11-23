

y <- boroughs_by_race

BK_r <- y %>% 
  select(group, starts_with("BK")) %>% 
  mutate(...Location = "BK") %>% 
  rename(...group = group)

names(BK_r) <- substring(names(BK_r), 4, 21)

BX_r <- y %>% 
  select(group, starts_with("BX")) %>% 
  mutate(...Location = "BX") %>% 
  rename(...group = group)

names(BX_r) <- substring(names(BX_r), 4, 21)

MN_r <- y %>% 
  select(group, starts_with("MN")) %>% 
  mutate(...Location = "MN") %>% 
  rename(...group = group)

names(MN_r) <- substring(names(MN_r), 4, 21)

QN_r <- y %>% 
  select(group, starts_with("QN")) %>% 
  mutate(...Location = "QN") %>% 
  rename(...group = group)

names(QN_r) <- substring(names(QN_r), 4, 21)

SI_r <- y %>% 
  select(group, starts_with("SI")) %>% 
  mutate(...Location = "SI") %>% 
  rename(...group = group)

names(SI_r) <- substring(names(SI_r), 4, 21)


remake_2 <- bind_rows(BK_r, BX_r, QN_r, MN_r, SI_r)

