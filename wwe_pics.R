# Assign image to selected superstars:

g$pic<-""
g <- g %>% 
  add_row(Superstar="Bray Wyatt/The Fiend",
          Matches=sum(g$Matches[g$Superstar=="Bray Wyatt"],g$Matches[g$Superstar=="The Fiend"]),
          Wins=sum(g$Wins[g$Superstar=="Bray Wyatt"],g$Wins[g$Superstar=="The Fiend"]),
          `Win%`=20/23,Brand="Smackdown",Gender="Male",pic="")

# RAW
g$pic[c(1,3,5,9,10,18,36,72,91,98)] <-c("newfolder\\asuka.png",
                                        "newfolder\\seth.png",
                                        "newfolder\\aleister.png",
                                        "newfolder\\drew.png",
                                        "newfolder\\lashley.png",
                                        "newfolder\\ko.png",
                                        "newfolder\\charlotte.png",
                                        "newfolder\\rko.png",
                                        "newfolder\\becky.png",
                                        "newfolder\\rey.png")

# Smackdown
g$pic[c(4,54,7,41,42,218,110,44,151,15)] <-c("newfolder\\bayley.png",
                                             "newfolder\\roman.png",
                                             "newfolder\\corbin.png",
                                             "newfolder\\sasha.png",
                                             "newfolder\\aj.png",
                                             "newfolder\\fiend.png",
                                             "newfolder\\hardy.png",
                                             "newfolder\\sheamus.png",
                                             "newfolder\\zayn.png",
                                             "newfolder\\bige.png")

# NXT
g$pic[c(37,38,53,56,65,69,71,76,94,114)] <-c("newfolder\\dakota.png",
                                             "newfolder\\priest.png",
                                             "newfolder\\ripley.png",
                                             "newfolder\\cole.png",
                                             "newfolder\\ciampa.png",
                                             "newfolder\\balor.png",
                                             "newfolder\\dunne.png",
                                             "newfolder\\gargano.png",
                                             "newfolder\\shirai.png",
                                             "newfolder\\dream.png")

# NXT UK
g$pic[c(132,139,142,143,144,163,188,164,171,174)] <-c("newfolder\\devlin.png",
                                                      "newfolder\\seven.png",
                                                      "newfolder\\dragunov.png",
                                                      "newfolder\\ray.png",
                                                      "newfolder\\bate.png",
                                                      "newfolder\\storm.png",
                                                      "newfolder\\niven.png",
                                                      "newfolder\\wolfgang.png",
                                                      "newfolder\\dar.png",
                                                      "newfolder\\walter.png")
  
  
  
  
