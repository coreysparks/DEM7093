

pe_sal<-read.csv("~/Downloads/ipress.csv")
pe_sal<-pe_sal%>%
  filter(is.na(ESTE)==F, grepl(x = Nombre.del.establecimiento, pattern="HOSPITAL"))
pe_sp<-st_as_sf(pe_sal, coords=c("NORTE","ESTE"),crs=4326,agr="constant")

pe_sp<-st_transform(pe_sp, crs = 24892)

mapview(pe_sp, zcol="Categoria")
