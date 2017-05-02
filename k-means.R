# Auth: Abhijeet Chopra
# Date: 30 Apr 2017
# Prog: K-means
# Desc: R Script to find clusters using k-means algorithm
# -----------------------------------------

setwd("C:/Users/abhij/Desktop")
mydata <- read.csv("C:/Users/abhij/Desktop/sg.csv", header = TRUE, stringsAsFactors=FALSE)

# K-Means Cluster Analysis
fit <- kmeans(mydata, 3) # 3 cluster solution
# get cluster means
aggregate(mydata,by=list(fit$cluster),FUN=mean)
# append cluster assignment
mydata <- data.frame(mydata, fit$cluster) 

write.csv(mydata, file = "k-means_output.csv", row.names = FALSE)
