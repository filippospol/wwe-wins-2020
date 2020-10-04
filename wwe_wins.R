library(tidyverse)
library(patchwork)
library(ggridges)
library(gt)
rm(list=ls())
source("C:\\Users\\Philippos\\Documents\\Projects\\Tools\\theme_white.R")
source("C:\\Users\\Philippos\\Documents\\Projects\\Tools\\theme_black.R")
theme_set(theme_white())



wwe<-readxl::read_xlsx(file.choose()) ; wwe<-wwe[order(wwe$Item,decreasing = F),]

# Brands-Gender
source("C:\\Users\\Philippos\\Documents\\Projects\\WWE\\wwe_brands_gender.R")

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

# Table
g<- df ; g$`Win%`<-g$`Win%`/100 ; g<-g[order(g$Matches,decreasing=T),]

# Pics
source("C:\\Users\\Philippos\\Documents\\Projects\\WWE\\wwe_pics.R")

# Tables
source("C:\\Users\\Philippos\\Documents\\Projects\\WWE\\wwe_gt.R")

gtsave(gt_raw,"gt_raw.png");gtsave(gt_sd,"gt_sd.png")
gtsave(gt_nxt,"gt_nxt.png");gtsave(gt_nxt_uk,"gt_nxt_uk.png")

 






