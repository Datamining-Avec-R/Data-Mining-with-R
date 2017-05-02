# Auth: Abhijeet Chopra
# Date: 01 May 2017
# Prog: Proximity Matrix
# Desc: R Script to compute Proximity Matrix
# -----------------------------------------
library(proxy)

setwd("C:/Users/abhij/Desktop")
df <- read.csv("C:/Users/abhij/Desktop/data.csv", header = TRUE, stringsAsFactors=TRUE)
dist(df, method = "euclidean", diag = TRUE, upper = TRUE, p = 2)
