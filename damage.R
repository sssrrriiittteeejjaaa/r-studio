table<-read.csv("project.csv",stringsAsFactors = FALSE)
total<-c()
for(y in unique(table$year))
{
  count<-0
  
  for(index in grep(y,table$year))
  {
    count<-count+table$Total.damage[index];
  }
  total<-c(total,count);
}
par(las=3)
barplot(height=total,names.arg = unique(table$year),xlab = "year",ylab = "total damage in '000 $ ",main = "DAMAGE caused due to disasters", col = c("red" ,"blue","orange","purple","green","lightblue"))