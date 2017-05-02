# Auth: Abhijeet Chopra
# Date: 30 Apr 2017
# Prog: Chi-Squared Test
# Desc: R Script to perform Chi-Squared test
# -----------------------------------------

setwd("C:/Users/abhij/Desktop")
df <- read.csv("C:/Users/abhij/Desktop/data.csv", header = TRUE, stringsAsFactors=TRUE)
tbl = table(df$column1,df$column2)
print(chisq.test(tbl))
