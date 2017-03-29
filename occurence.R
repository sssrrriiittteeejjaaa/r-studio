table<-read.csv("project.csv",stringsAsFactors = FALSE)
total<-c()
for(y in unique(table$iso))
{
  count<-0
  
  for(index in grep(y,table$iso))
  {
    count<-count+table$occurrence[index];
  }
  total<-c(total,count);
}
par(las=1)
barplot(height=total,names.arg = unique(table$iso),main = "Occurence of disasters", xlab = "country name",ylab = "total occurence", col = rainbow(222))