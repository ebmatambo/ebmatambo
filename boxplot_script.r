library(tidyverse)
data1 <- read.csv(file.choose()) #Opening the csv file containing the data to plot 
attach(data1) # Attaching the file 
data1 #opening the data for viewing 
#generating the first boxplot without themes 
myplot <- ggplot(data1, aes(Trimming, percent_duplicates)) + geom_point() + geom_boxplot()
#boxplot with a theme 
myplot + theme(panel.grid = element_blank(), panel.background = element_rect(fill = "white"), 
               panel.border = element_rect(colour = "black", fill = NA, size = 0.4 ))
myplot2 <- ggplot(data1, aes(Trimming, avg_sequence_length)) + geom_point() + geom_boxplot()
myplot2 + theme(panel.grid = element_blank(), panel.background = element_rect(fill = "white"), 
                panel.border = element_rect(colour = "black", fill = NA, size = 0.4 ))
#Rearranging values so that the first value should be "Before" and not "After" as they appear on the boxplot
data1$Trimming <- with(data1, relevel(Trimming, "Before"))
number_of_sequences <- ggplot(data1, aes(Trimming, total_sequences)) + geom_boxplot()
number_of_sequences + theme(panel.grid = element_blank(), panel.background = element_rect(fill = "white"), 
                panel.border = element_rect(colour = "black", fill = NA, size = 0.4 )) + ggtitle("Total number of sequences) + theme(plot.title = element_text(hjust = 0.5))


