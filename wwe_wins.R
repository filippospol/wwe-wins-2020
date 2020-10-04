library(tidyverse)
library(patchwork)
library(ggridges)
library(gt)
theme_set(theme_minimal())



wwe<-readxl::read_xlsx(file.choose()) ; wwe<-wwe[order(wwe$Item,decreasing = F),]

# Brands-Gender
source("wwe_brands_gender.R")

# Create dataframe for plot
df<-wwe[(wwe$Brand!="205 Live"&wwe$Brand!="Other"),c(1,2,3,4,9,10)]

# Male
m <- ggplot(df[df$Gender=="Male",], aes(x = `Win%`, y = Brand,fill=Brand,
                                        color=Brand)) +
  geom_density_ridges()  + 
  labs(subtitle="Male Superstars",x="Win%",y="",
       caption="") +
  scale_fill_manual(values=c("goldenrod2","gray20","#BA1A2A","#006BC9")) +
  scale_color_manual(values=c("goldenrod2","gray20","#BA1A2A","#006BC9")) +
  theme(plot.subtitle=element_text(color="dodgerblue"))

# Female
f <- ggplot(df[df$Gender=="Female",], aes(x = `Win%`, y = Brand,fill=Brand,
                                          color=Brand)) +
  geom_density_ridges()  + 
  labs(subtitle="Female Superstars",x="Win%",y="",
       caption="") +
  scale_fill_manual(values=c("goldenrod2","gray20","#BA1A2A","#006BC9")) +
  scale_color_manual(values=c("goldenrod2","gray20","#BA1A2A","#006BC9")) +
  theme(plot.subtitle=element_text(color="hotpink"))

p <- m+f+plot_annotation(title="WWE: Win % Per Brand, 2020",caption="cagematch.net")

# ggsave the ridge plot

# Table
g<- df ; g$`Win%`<-g$`Win%`/100 ; g<-g[order(g$Matches,decreasing=T),]

# Pics
source("wwe_pics.R")

# Tables
source("wwe_gt.R")

# gtsave the created tables

 






