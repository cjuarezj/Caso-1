setwd("~/Documents/GitHub/Caso-1/specdata")
directori<-"~/Documents/GitHub/Caso-1/specdata"

mediacontaminante <- function(directorio=directori, contaminante="sulfate", id = 1:332){
    if(contaminante == "sulfate"){
        x<-2 
    }else if (contaminante == "nitrate"){
        x<-3
    }
    for (i in id) {
        if(i<=9){
            t<- paste("00",id,".csv",sep="")
            c<-read.csv(t)
            print(mean(c[,x],na.rm=TRUE))
            
        }else if(i<=99){
            t<- paste("0",id,".csv",sep="")
            c<-read.csv(t)
            print(mean(c[,x],na.rm=TRUE))
            
        }else{
            t<- paste(id,".csv",sep="")
            c<-read.csv(t)
            print(mean(c[,x],na.rm=TRUE))
        }
    }
    
}
mediacontaminante(directorio,"nitrate",1:4)
