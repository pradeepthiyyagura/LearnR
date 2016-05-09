library(dplyr)
demo<-read.csv("ADNI_APP_NL_DEMO.csv",header=TRUE)
glimpse(demo)
demo$DOB<-as.Date(demo$DOB)
dput(names(demo))
varsToFactor <- c("Current.DX","Carrier","Status","PTGENDER")
demo[varsToFactor] <- lapply(demo[varsToFactor],factor)
vars<-c("Current.DX", "Carrier", "Status","PTGENDER", "PTEDUCAT", "AGE", "MMSCORE")
tabledemo <- CreateTableOne(vars=vars, strata=c("Status"), data= demo )
tabledemo
print(tabledemo,cramVars=c("Current.DX","PTGENDER"))




