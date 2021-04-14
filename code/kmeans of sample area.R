src<-raster("~/OneDrive - University of Texas at San Antonio/classes/gis_classwork/smallsasample.tif")


sa<-as.data.frame(src)
cl<-kmeans(sa, centers=8)
cl

sa2<-raster(src)
   ## create an empty raster with same extent than ICE
clusters <- setValues(sa2, factor(cl$cluster) )
clusters
plot(clusters)


