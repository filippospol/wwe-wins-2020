# Assign image to selected superstars:

g$pic<-""
g <- g %>% 
  add_row(Superstar="Bray Wyatt/The Fiend",
          Matches=sum(g$Matches[g$Superstar=="Bray Wyatt"],g$Matches[g$Superstar=="The Fiend"]),
          Wins=sum(g$Wins[g$Superstar=="Bray Wyatt"],g$Wins[g$Superstar=="The Fiend"]),
          `Win%`=20/23,Brand="Smackdown",Gender="Male",pic="")

# RAW
g$pic[c(1,3,5,9,10,18,36,72,91,98)] <-c("C:\\logos\\wrestlers\\asuka.png",
                                        "C:\\logos\\wrestlers\\seth.png",
                                        "C:\\logos\\wrestlers\\aleister.png",
                                        "C:\\logos\\wrestlers\\drew.png",
                                        "C:\\logos\\wrestlers\\lashley.png",
                                        "C:\\logos\\wrestlers\\ko.png",
                                        "C:\\logos\\wrestlers\\charlotte.png",
                                        "C:\\logos\\wrestlers\\rko.png",
                                        "C:\\logos\\wrestlers\\becky.png",
                                        "C:\\logos\\wrestlers\\rey.png")

# Smackdown
g$pic[c(4,54,7,41,42,218,110,44,151,15)] <-c("C:\\logos\\wrestlers\\bayley.png",
                                             "C:\\logos\\wrestlers\\roman.png",
                                             "C:\\logos\\wrestlers\\corbin.png",
                                             "C:\\logos\\wrestlers\\sasha.png",
                                             "C:\\logos\\wrestlers\\aj.png",
                                             "C:\\logos\\wrestlers\\fiend.png",
                                             "C:\\logos\\wrestlers\\hardy.png",
                                             "C:\\logos\\wrestlers\\sheamus.png",
                                             "C:\\logos\\wrestlers\\zayn.png",
                                             "C:\\logos\\wrestlers\\bige.png")

# NXT
g$pic[c(37,38,53,56,65,69,71,76,94,114)] <-c("C:\\logos\\wrestlers\\dakota.png",
                                             "C:\\logos\\wrestlers\\priest.png",
                                             "C:\\logos\\wrestlers\\ripley.png",
                                             "C:\\logos\\wrestlers\\cole.png",
                                             "C:\\logos\\wrestlers\\ciampa.png",
                                             "C:\\logos\\wrestlers\\balor.png",
                                             "C:\\logos\\wrestlers\\dunne.png",
                                             "C:\\logos\\wrestlers\\gargano.png",
                                             "C:\\logos\\wrestlers\\shirai.png",
                                             "C:\\logos\\wrestlers\\dream.png")

# NXT UK
g$pic[c(132,139,142,143,144,163,188,164,171,174)] <-c("C:\\logos\\wrestlers\\devlin.png",
                                                      "C:\\logos\\wrestlers\\seven.png",
                                                      "C:\\logos\\wrestlers\\dragunov.png",
                                                      "C:\\logos\\wrestlers\\ray.png",
                                                      "C:\\logos\\wrestlers\\bate.png",
                                                      "C:\\logos\\wrestlers\\storm.png",
                                                      "C:\\logos\\wrestlers\\niven.png",
                                                      "C:\\logos\\wrestlers\\wolfgang.png",
                                                      "C:\\logos\\wrestlers\\dar.png",
                                                      "C:\\logos\\wrestlers\\walter.png")
  
  
  
  