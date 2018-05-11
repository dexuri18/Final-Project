#install and load the gridExtra and tidyverse library
install.packages("gridExtra")
install.packages("ggpubr")
library(gridExtra)
library(tidyverse)
library("ggpubr")

#load the data
surveys <- read.csv("coralreef_anb_2015.csv")

#ZONE COMPARISON

#clean the data from NA and blank value
cov_zone_surveys_complete <- surveys %>%
  filter(!is.na(coral_coverage)) %>%
  filter(!is.na(pH)) %>%
  filter(!is.na(salinity)) %>%
  filter(!is.na(do)) %>%
  filter(zone !="") %>%
  filter(zone1 !="")

#piechart of the records
count_all <- surveys %>% tally()
cov_zone_count_complete <- surveys %>%
  filter(!is.na(coral_coverage)) %>%
  filter(zone !="") %>%
  tally()

cov_zone_count_unclomplete <- count_all - cov_zone_count_complete

slices <- c(cov_zone_count_unclomplete[1,1],cov_zone_count_complete[1,1])
lbls <- c("uncomplete records", "complete records")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Data Completeness")

#------------------------------------------------
#plot coverage per zone
ggplot(cov_zone_surveys_complete, aes(x = zone, y = coral_coverage)) + geom_boxplot()+xlab("Zone")

#plot coverage core zone vs other zone
ggplot(cov_zone_surveys_complete, aes(x = zone1, y = coral_coverage)) + geom_boxplot()+xlab("Zone1")


#------------------------------------------------
#testing the mean coverage between zone to see the difference
#Is the mean coverage is significantly different among the zones?
##visualize the data using box plots
ggboxplot(cov_zone_surveys_complete, x = "zone1", y = "coral_coverage", color = "zone1", ylab = "coral_coverage", xlab = "zone")
##do the population have the same variances? use "f-test". answer = no because p-value < 0.05
result_ftest_coverage_zone <-var.test(coral_coverage ~ zone1, data = cov_zone_surveys_complete)
##is there any significant difference between zone coverage? use "t-test".
##answer = no, because p value > 0.05. (......... = same)
t.test(coral_coverage ~ zone1, data = cov_zone_surveys_complete, var.equal = FALSE)





