# Create Tables of Win% for certain superstars

# RAW
gt_raw <- g[c(1,3,5,9,10,18,36,72,91,98),] %>%
  select(pic,Superstar,Matches,`Win%`) %>% 
  gt() %>%
  cols_label(
    pic = "Superstar",
    Superstar =  "",
    Matches = "Matches",
    `Win%` = "Win%"
  ) %>% 
  tab_header(
    title = "WWE: Win% Per Brand, 2020",
    subtitle = "Monday Night RAW, as of 10/04/2020") %>% 
  fmt_percent(
    columns = vars(`Win%`),
    decimals=1) %>%
  cols_align(
    align = "center",
    columns = vars(pic)
  ) %>% 
  text_transform(
    locations = cells_body(vars(pic)),
    fn = function(pic) {
      lapply(pic, local_image)
    }
  ) %>% 
  tab_style(
    style=cell_text(font="Bahnschrift"),
    locations = list(cells_title(groups="title"),
                     cells_body(columns=T,rows=T),
                     cells_row_groups(groups=T),
                     cells_column_labels(columns=vars(Superstar,Matches,`Win%`)))
  ) 

# Smackdown
gt_sd <- g[c(4,54,7,41,42,218,110,44,151,15),] %>%
  select(pic,Superstar,Matches,`Win%`) %>% 
  gt() %>%
  cols_label(
    pic = "Superstar",
    Superstar =  "",
    Matches = "Matches",
    `Win%` = "Win%"
  ) %>% 
  tab_header(
    title = "WWE: Win% Per Brand, 2020",
    subtitle = "Friday Night Smackdown, as of 10/04/2020") %>% 
  fmt_percent(
    columns = vars(`Win%`),
    decimals=1) %>%
  cols_align(
    align = "center",
    columns = vars(pic)
  ) %>% 
  text_transform(
    locations = cells_body(vars(pic)),
    fn = function(pic) {
      lapply(pic, local_image)
    }
  ) %>% 
  tab_style(
    style=cell_text(font="Bahnschrift"),
    locations = list(cells_title(groups="title"),
                     cells_body(columns=T,rows=T),
                     cells_row_groups(groups=T),
                     cells_column_labels(columns=vars(Superstar,Matches,`Win%`)))
  )

# NXT
gt_nxt <- g[c(37,38,53,56,65,69,71,76,94,114),] %>%
  select(pic,Superstar,Matches,`Win%`) %>% 
  gt() %>%
  cols_label(
    pic = "Superstar",
    Superstar =  "",
    Matches = "Matches",
    `Win%` = "Win%"
  ) %>% 
  tab_header(
    title = "WWE: Win% Per Brand, 2020",
    subtitle = "NXT, as of 10/04/2020") %>% 
  fmt_percent(
    columns = vars(`Win%`),
    decimals=1) %>%
  cols_align(
    align = "center",
    columns = vars(pic)
  ) %>% 
  text_transform(
    locations = cells_body(vars(pic)),
    fn = function(pic) {
      lapply(pic, local_image)
    }
  ) %>% 
  tab_style(
    style=cell_text(font="Bahnschrift"),
    locations = list(cells_title(groups="title"),
                     cells_body(columns=T,rows=T),
                     cells_row_groups(groups=T),
                     cells_column_labels(columns=vars(Superstar,Matches,`Win%`)))
  )

# NXT UK
gt_nxt_uk <- g[c(132,139,142,143,144,163,188,164,171,174),] %>%
  select(pic,Superstar,Matches,`Win%`) %>% 
  gt() %>%
  cols_label(
    pic = "Superstar",
    Superstar =  "",
    Matches = "Matches",
    `Win%` = "Win%"
  ) %>% 
  tab_header(
    title = "WWE: Win% Per Brand, 2020",
    subtitle = "NXT UK, as of 10/04/2020") %>% 
  fmt_percent(
    columns = vars(`Win%`),
    decimals=1) %>%
  cols_align(
    align = "center",
    columns = vars(pic)
  ) %>% 
  text_transform(
    locations = cells_body(vars(pic)),
    fn = function(pic) {
      lapply(pic, local_image)
    }
  ) %>% 
  tab_style(
    style=cell_text(font="Bahnschrift"),
    locations = list(cells_title(groups="title"),
                     cells_body(columns=T,rows=T),
                     cells_row_groups(groups=T),
                     cells_column_labels(columns=vars(Superstar,Matches,`Win%`)))
  )

