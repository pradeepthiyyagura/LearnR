data<- read.csv(file="Combine_all_ROI_V3.csv", header=TRUE, sep = ",")
datadf<-tbl_df(data)

single<-datadf %>%
  filter(SUBJID == "011_S_0021_v11",Method == "PET_PVC" | Method == "FS_PVC" , SUVR =="SUVR_BS") %>%
  select(FS_PVC_SUVR_Brainstem_subjid, Left.Cerebellum.White.Matter:ctx.rh.insula)

single.T=t(single)
colns<-single.T[1, ]
single.Tn=as.data.frame(single.T[2:nrow(single.T), ])
colnames(single.Tn)<-colns


