# This explains size renaming
# It uses labs(size="") demonstrated in p1
# p2 has labs(colour ="")
setwd("~/Documents")
library(tidyverse)
library(ggrepel)
library(patchwork)
df <- read.csv("Referees48.csv")
head(df,4)
p1 <- ggplot(df, aes(Fixture, PensConc, size=PensConc)) +
  geom_point(colour = "blue") +
  labs(size="Penalties\nFree Kicks\nConceded", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Penalties and Free Kicks Conceded",
       x= "Fixture", y = "Penalties and Free Kicks Conceded") +
  labs(caption = "RWC 2019; Penalties and Free Kicks Conceded") +
  annotate("pointrange", x = 31, y =7 , ymin =7, ymax =7, 
           colour = "red", size =0.25) +
  annotate("text", x=31, y=5, label = "Scotland v Russia", size=3, fontface="bold") +
  annotate("pointrange", x = 18, y =24, ymin =24, ymax =24, 
           colour = "red", size = 1.5) +
  annotate("text", x=18, y=27, label = "Scotland v Samoa", size=3, fontface="bold") +
  scale_y_continuous(name = "Penalties and Free Kicks Conceded",
                     breaks = seq(0, 30, 5),
                     limits=c(0, 30)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p1
p2 <- ggplot(df, aes(Fixture, Passes, size=Passes)) +
  geom_point(colour = "blue") +
  labs(size="Passes", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Passes Per Game",
       x= "Fixture", y = "Passes") +
  labs(caption = "RWC 2019; Passes Per Game") +
  annotate("pointrange", x = 46, y = 182 , ymin = 182, ymax = 182, 
           colour = "red", size =0.25) +
  annotate("text", x=40, y=160, label = "Wales v South Africa", size=3, fontface="bold") +
  annotate("pointrange", x = 27, y = 401 , ymin =182, ymax = 182, 
           colour = "red", size = 1.5) +
  annotate("text", x=26, y=430, label = "New Zealand v Namibia", size=3, fontface="bold") +
  scale_y_continuous(name = "Passes Per Game",
                     breaks = seq(150, 500, 50),
                     limits=c(150, 500)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p2
p3 <- ggplot(df, aes(Fixture, RefCountry, size=PensConc)) +
  geom_point(colour = "blue") +
  labs(size="Penalties\nFree Kicks\nPer Game", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Penalties and Free Kicks Per Game",
       x= "Fixture", y = "Referee's Country") +
  labs(caption = "RWC 2019; Penalties and Free Kicks Per Game") +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p3
p4 <- ggplot(df, aes(Fixture, PensConc, size=PensConc)) +
  geom_point(colour = "blue") +
  labs(size="Penalties\nFree Kicks\nPer Game", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Penalties and Free Kicks Per Game",
       x= "Fixture", y = "Referee's Country") +
  labs(caption = "RWC 2019; Penalties and Free Kicks Per Game") +
  annotate("pointrange", x = 31, y = 7, ymin = 7, ymax = 7, 
           colour = "red", size =0.25) +
  annotate("text", x=28, y=5, label = "Scotland v Russia", size=3, fontface="bold") +
  annotate("pointrange", x = 18, y = 24, ymin = 24, ymax = 24, 
           colour = "red", size = 1.5) +
  annotate("text", x=18, y=27, label = "Scotland v Samoa", size=3, fontface="bold") +
  scale_y_continuous(name = "Penalties and Free Kicks Per Game",
                     breaks = seq(0, 30, 10),
                     limits=c(0, 30)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p4
p5 <- ggplot(df, aes(Fixture, Kicks, size=Kicks)) +
  geom_point(colour = "blue") +
  labs(size="Kicks\nPer Game", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Kicks Per Game",
       x= "Fixture", y = "Kicks") +
  labs(caption = "RWC 2019; Kicks Per Game") +
  annotate("pointrange", x = 23, y =37 , ymin =37, ymax = 37, 
           colour = "red", size =0.25) +
  annotate("text", x=20, y=33, label = "New Zealand v Namibia", size=3, fontface="bold") +
  annotate("pointrange", x = 46, y = 81 , ymin =81, ymax = 81, 
           colour = "red", size = 1.5) +
  annotate("text", x=42, y=88, label = "Wales v South Africa", size=3, fontface="bold") +
  scale_y_continuous(name = "Kicks Per Game",
                     breaks = seq(20, 100, 20),
                     limits=c(20, 100)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p5
p6 <- ggplot(df, aes(Fixture, Lineouts, size=Lineouts)) +
  geom_point(colour = "blue") +
  labs(size="Lineouts\nPer Game", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Lineouts Per Game",
       x= "Fixture", y = "Lineouts") +
  labs(caption = "RWC 2019; Lineouts Per Game") +
  annotate("pointrange", x = 48, y =14 , ymin =14, ymax = 14, 
           colour = "red", size =0.25) +
  annotate("text", x=40, y=12, label = "England v South Africa", size=3, fontface="bold") +
  annotate("pointrange", x = 18, y = 35, ymin = 35, ymax = 35, 
           colour = "red", size = 1.5) +
  annotate("text", x=15, y=38, label = "Scotland v Samoa", size=3, fontface="bold") +
  scale_y_continuous(name = "Lineouts Per Game",
                     breaks = seq(10, 40, 10),
                     limits=c(10, 40)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p6
p7 <- ggplot(df, aes(Fixture, Scrums, size=Scrums)) +
  geom_point(colour = "blue") +
  labs(size="Scrums\nPer Game", fontface="bold") +
  labs(title = "RWC 2019", subtitle = "Scrums Per Game",
       x= "Fixture", y = "Scrums") +
  labs(caption = "RWC 2019; Scrums Per Game") +
  annotate("pointrange", x = 27, y =1 , ymin =1, ymax = 1, 
           colour = "red", size =0.25) +
  annotate("text", x=36, y=1, label = "New Zealand v Namibia", size=3, fontface="bold") +
  annotate("pointrange", x = 39, y = 21, ymin = 21, ymax = 21, 
           colour = "red", size = 1.5) +
  annotate("text", x=35, y=24, label = "Wales v Uruguay", size=3, fontface="bold") +
  scale_y_continuous(name = "Scrums Per Game",
                     breaks = seq(0, 30, 10),
                     limits=c(0, 30)) +
  theme_minimal() +
  theme(plot.title = element_text(color="black", size=16, face="bold"),
        plot.subtitle = element_text(size=12),
        axis.title = element_text(color="black", size=12, face="bold"),
        axis.text = element_text(color="black", size=10))
p7