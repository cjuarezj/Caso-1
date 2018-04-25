setwd("~/Documents/GitHub/Caso-1/specdata")
directorio<-"~/Documents/GitHub/Caso-1/specdata"

completos<-function(directorio,id=1:332){
    x<-c()
    for (i in id) {
        if(i<=9){
            t<- paste("00",id,".csv",sep="")
            v<-read.csv(t)
        }else if(i<=99){
            t<- paste("0",id,".csv",sep="")
            v<-read.csv(t)
        }else{
            t<- paste(id,".csv",sep="")
            v<-read.csv(t)
        }
        tabla<-na.omit(v)
        renglones<-nrow(tabla)
        x<-c(x,renglones)
    }
    data.frame(x)
}
completos(directorio, 3)