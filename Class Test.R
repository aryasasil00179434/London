#1
london_crime<-read.csv("London-crime-data.csv")
str(london_crime)
london_crime$Date<-paste(london_crime$day,london_crime$month,london_crime$year,sep = "/")
class(london_crime$Date)
london_crime

#2
names(london_crime)
library(data.table)
setnames(london_crime,'borough','Borough')
setnames(london_crime,'major_category','MajorCategory')
setnames(london_crime,'minor_category','SubCategory')
setnames(london_crime,'value','Value')
setnames(london_crime,'Date','CrimeDate')
names(london_crime)

#3
london_crime$CrimeDate=as.Date(london_crime$CrimeDate, format=c("%m/%d/%Y"))
class(london_crime$CrimeDate)
london_crime$CrimeDate

#4
borough_info<-table(london_crime$Borough)
windows(20,10)
barplot(borough_info, 
        main = "Crime Distribution by Borough", 
        xlab = "Borough", 
        ylab = "Number of Crimes")
#highest level of crime is in Croydon from the Chart
#lowest level of crime is in City of London from the Chart

#5
MajorCategory_var<-table(london_crime$MajorCategory)
windows(20,10)
lbls3 <- paste(names(MajorCategory_var), "\n", MajorCategory_var, sep = "")
pie(MajorCategory_var, labels = lbls3,
    main = "Crimes With Major Category")
#Highest MajorCategory of Crime is  Theft and Handling from the Pie Chart 
#lowest MajorCategory of Crime is  Sexual Offences from the Pie Chart


#6

london_crime$Region[london_crime$Borough=="Barking and Dagenham"]<-"East"
london_crime$Region[london_crime$Borough=="Barnet"]<-"North"
london_crime$Region[london_crime$Borough=="Bexley"]<-"East"
london_crime$Region[london_crime$Borough=="Brent"]<-"West"
london_crime$Region[london_crime$Borough=="Bromley"]<-"South" 
london_crime$Region[london_crime$Borough=="Camden"]<-"North"

london_crime$Region[london_crime$Borough=="Croydon"]<-"South"
london_crime$Region[london_crime$Borough=="Ealing"]<-"West"
london_crime$Region[london_crime$Borough=="Enfield"]<-"North "
london_crime$Region[london_crime$Borough=="Greenwich"]<-"East"
london_crime$Region[london_crime$Borough=="Hackney"]<-"North " 
london_crime$Region[london_crime$Borough=="Hammersmith and Fulham"]<-"West"
london_crime$Region[london_crime$Borough=="Haringey"]<- "North"
london_crime$Region[london_crime$Borough=="Harrow"]<-"West "
london_crime$Region[london_crime$Borough=="Havering"]<-"East "
london_crime$Region[london_crime$Borough=="Hillingdon"]<- "West"
london_crime$Region[london_crime$Borough=="Hounslow" ]<-"West" 
london_crime$Region[london_crime$Borough=="Islington"]<-"Central"
london_crime$Region[london_crime$Borough=="Kensington and Chelsea"]<-"Central "
london_crime$Region[london_crime$Borough=="Kingston upon Thames"]<-"East"
london_crime$Region[london_crime$Borough=="Lambeth"]<-"Central"
london_crime$Region[london_crime$Borough=="Lewisham"]<-"Central"
london_crime$Region[london_crime$Borough=="Merton"]<-"South" 
london_crime$Region[london_crime$Borough=="Newham"]<-"East"
london_crime$Region[london_crime$Borough=="Redbridge"]<-"East"
london_crime$Region[london_crime$Borough=="Richmond upon Thames"]<-"West"
london_crime$Region[london_crime$Borough=="Southwark"]<-"Central"
london_crime$Region[london_crime$Borough=="Sutton"]<-"South"
london_crime$Region[london_crime$Borough=="Tower Hamlets"]<-"Central" 
london_crime$Region[london_crime$Borough=="Waltham Forest"]<-"Central"
london_crime$Region[london_crime$Borough=="Wandsworth"]<-"East " 
london_crime$Region[london_crime$Borough=="Westminster"]<-"Central"
london_crime$Region[london_crime$Borough=="City of London"]<-"Central"
View(london_crime)
sum(is.na(london_crime$Region))



#7



