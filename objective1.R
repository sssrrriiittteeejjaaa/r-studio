table<-read.csv("project.csv",stringsAsFactors = FALSE)
total<-c()
for(y in unique(table$year))
  {
   count<-0
   for(index in grep(y,table$year))
   {
     count<-count+table$Total.deaths[index];
   }
   total<-c(total,count);
}
par(las=3)
barplot(height=total,names.arg = unique(table$year),main = "DEATH TOLL",xlab = "year",ylab = "total deaths", col = c("darkblue" ,"red"))