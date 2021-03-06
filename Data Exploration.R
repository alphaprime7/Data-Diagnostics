# Importing DOD data on fledgling_tarsus size 
> de6 = read.csv(file = "DataExplodod.csv", head=TRUE)
> head(de6)
fledgling.tarsus.mm bombed parent.tarsus.mm parent.beak.mm parent.plumage.nm
1            15.39007    Yes         18.41333       18.98714          36.34021
2            12.64804    Yes         22.55152       16.52570          33.94308
3            15.00347    Yes         19.38898       16.22412          33.87488
4            16.82495    Yes         21.34245       16.97922          34.70737
5            12.88258    Yes         18.01541       16.32254          34.20202
6            16.89012    Yes         21.49509       18.01752          35.80707
> summary(de6)
fledgling.tarsus.mm bombed     parent.tarsus.mm parent.beak.mm  parent.plumage.nm
Min.   : 9.924      No :4485   Min.   : 1.32    Min.   :13.25   Min.   :31.20    
1st Qu.:14.063      Yes:4485   1st Qu.: 3.32    1st Qu.:16.33   1st Qu.:34.09    
Median :15.003                 Median : 8.63    Median :17.01   Median :34.77    
Mean   :15.013                 Mean   :11.53    Mean   :17.00   Mean   :34.78    
3rd Qu.:15.947                 3rd Qu.:19.96    3rd Qu.:17.67   3rd Qu.:35.45    
Max.   :20.230                 Max.   :33.90    Max.   :20.88   Max.   :38.89    
> hist(de6$fledgling.tarsus.mm)
> boxplot(de6$fledgling.tarsus.mm, method = "jitter", notch=TRUE, main="Fledgling tarsus size_boxplot", ylab="Fledgling tarsus size", col = "grey", whiskcol=c("green"), outcol=c("blue"), outbg=c("grey"), staplecol=c('violet'), medcol=c("red"), boxcol=c("yellow"), outcex=1.5, outpch=21 ) 

# Diagnostic plot of fledgling_tarsus size
> summary(de6$bombed)
No  Yes 
4485 4485 
> deb <- subset(de6medata, bombed == "No")
> deby <- subset(de6medata, bombed == "Yes")
> library(ggplot2)
> require(ggplot2)
> ggplot(data=de6medata, aes(x=bombed, y=de6medata$fledgling.tarsus.mm)) + geom_boxplot(aes(fill=bombed))

#Simple boxplot without Ggplot and Homoscedasticity test and determination of outliers without a for loop
> par(mfrow = c(1, 2))
> boxplot(deb$fledgling.tarsus.mm, method = "jitter", notch=TRUE, main="Fledgling tarsus size_boxplot", ylab="Fledgling tarsus size", xlab="No", col = "grey", whiskcol=c("green"), outcol=c("blue"), outbg=c("grey"), staplecol=c('violet'), medcol=c("red"), boxcol=c("yellow"), outcex=1.5, outpch=21 )
> boxplot(deby$fledgling.tarsus.mm, method = "jitter", notch=TRUE, main="Fledgling tarsus size_boxplot", ylab="Fledgling tarsus size", xlab="Yes", col = "grey", whiskcol=c("green"), outcol=c("blue"), outbg=c("grey"), staplecol=c('violet'), medcol=c("red"), boxcol=c("yellow"), outcex=1.5, outpch=21 )
> par(mfrow = c(1, 3))
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch="*", col="red", cex=2)
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch="20", col="red", cex=2)
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch=".", col="red", cex=2)
> abline(lm(deb$fledgling.tarsus.mm ~ deby$fledgling.tarsus.mm), col="blue", lwd=3, lty=2)


> boxplot.stats(de6$fledgling.tarsus.mm)$out
[1] 10.344348 18.814091 10.415042 19.622967 11.061591  9.924046 19.793615 18.804691 19.371692 18.937246 19.407759 11.214324 11.227381
[14] 11.165268 10.566287 19.154745 19.169724 10.749583 18.821026 18.874882 19.066757 19.703521 10.984297 11.133047 19.345957 11.055827
[27] 19.610047 11.041026 11.139726 18.808604 11.004137 10.280699 10.748538 18.903369 19.886274 18.814143 11.043852 19.171909 19.412784
[40] 10.576883 18.868426 19.381711 11.208980 18.931276 20.229977 10.146309 18.903844 10.662202 18.843850 11.149227 19.547188 11.095586
[53] 19.432350 19.667658 19.470527 19.213286 10.030512 19.350056 19.399192 18.869636
boxplot.stats(de6$fledgling.tarsus.mm, coef=1)$out
[1] 12.094302 11.678968 11.995870 12.112298 11.858993 10.344348 11.856748 11.994877 17.998291 18.273993 11.613131 11.452854 11.649571
[14] 11.836435 11.944929 17.922826 11.842830 12.022154 11.902106 11.861246 18.814091 18.120149 17.891882 11.574369 18.507937 12.173370
[27] 12.130572 11.958883 18.274579 10.415042 18.370266 18.369006 11.562416 12.177883 18.119051 17.968577 17.876133 11.847892 18.166494
[40] 18.656966 18.503813 18.165892 18.581129 18.143084 19.622967 18.061132 11.061591 12.096443 11.464460 11.386313 11.943833  9.924046

# Determining normality of the data
> par(mfrow = c(3, 2))
> h1 = hist(deb$fledgling.tarsus.mm, xlab="Fledgling size_No", xlim=c(0,25), ylim=c(0,1300), main="Fledgling size HIstogram")
> x=seq(10.03,20.23, length=4485)
> y=dnorm(x,mean = m1, sd=std1)
> plot(x,y,type="l",lwd=1,col="blue", xlim = c(0,25), ylim = c(0,0.3))
>m1 = mean(deb$fledgling.tarsus.mm)
>std1 = sqrt(var(deb$fledgling.tarsus.mm))
> m2 = mean(deby$fledgling.tarsus.mm)
> std2 = sqrt(var(deby$fledgling.tarsus.mm))
> x1=seq(9.924,19.794, length=4485)
> y1=dnorm(x1,mean = m2, sd=std2)
> h2 = hist(deby$fledgling.tarsus.mm, xlab="Fledgling size_Yes", xlim=c(0,25), ylim=c(0,1300), main="Fledgling size HIstogram")
> plot(x1,y1,type="l",lwd=1,col="red", xlim = c(0,25), ylim = c(0,0.3))
> m3 = mean(de6$fledgling.tarsus.mm)
> std3 = sqrt(var(de6$fledgling.tarsus.mm))
> summary(de6$fledgling.tarsus.mm)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
9.924  14.063  15.003  15.013  15.947  20.230 
> x2=seq(9.924,20.23, length=8970)
> y2=dnorm(x2,mean = m3, sd=std3)
> h3 = hist(de6$fledgling.tarsus.mm, xlab="Fledgling size_All", xlim=c(0,25), ylim=c(0,1300), main="Fledgling size HIstogram")
> plot(x2,y2,type="l",lwd=1,col="violet", xlim = c(0,25), ylim = c(0,0.3))
> par(mfrow = c(3, 1))
> qqnorm(deb$fledgling.tarsus.mm, ylim = c(0,25),ylab= "Sample Quantities_No Bombing")
> qqline(deb$fledgling.tarsus.mm, col = "red")
> qqnorm(deby$fledgling.tarsus.mm, ylim = c(0,25), ylab= "Sample Quantities_Bombing")
> qqline(deby$fledgling.tarsus.mm, col = "blue")
> qqnorm(de6$fledgling.tarsus.mm, ylim = c(0,25), ylab= "Sample Quantities_Yes&No")
> qqline(de6$fledgling.tarsus.mm, col = "green")

# Testing for Colinearity between independent variables. Colinearity is problematic because independent variables should be independent variables. With colinearity
# cofficient estimates become very sensitive to minor changes and inflation of variance & standard error coefficients.
# Solutions are to select independent variables very carefully or use a Principal component analysis (PCA)
# It distorts interpretation but not necessarily the predictive ability of the model
>> par(mfrow = c(2, 2))
> plot(deb$parent.beak.mm, deb$parent.tarsus.mm, xlim=c(0, 25), ylim=c(0, 15), main = "Colinearity_parent tarsus vs Beak", xlab="Bombed_parentbeak", ylab="Bomed_parenttarsus")
> plot(deb$parent.beak.mm, deb$parent.plumage.nm, xlim=c(0, 25), ylim=c(0, 50), main = "Colinearity_parent plummage vs Beak", xlab="Bombed_parentbeak", ylab="Bomed_parentplumage")
> plot(deb$parent.plumage.nm, deb$parent.tarsus.mm, xlim=c(0, 50), ylim=c(0, 15), main = "Colinearity_parent tarsus vs plumage", xlab="Bombed_plumage", ylab="Bomed_parenttarsus")
> par(mfrow = c(2, 2))
> plot(deby$parent.beak.mm, deb$parent.tarsus.mm, xlim=c(0, 25), ylim=c(0, 15), main = "Colinearity_parent tarsus vs Beak", xlab="NotBombed_parentbeak", ylab="NotBomed_parenttarsus")
> plot(deby$parent.beak.mm, deb$parent.plumage.nm, xlim=c(0, 25), ylim=c(0, 50), main = "Colinearity_parent plummage vs Beak", xlab="NotBombed_parentbeak", ylab="NotBomed_parentplumage")
> plot(deby$parent.plumage.nm, deb$parent.tarsus.mm, xlim=c(0, 50), ylim=c(0, 15), main = "Colinearity_parent tarsus vs plumage", xlab="NotBombed_plumage", ylab="NotBomed_parenttarsus")
> plot(deby$parent.plumage.nm, deby$fledgling.tarsus.mm, xlim=c(0, 50), ylim=c(0, 25), main = "Correlation_fledgling tarsus vs plumage", xlab="Bombed_plumage", ylab="Bomed_fledglingtarsus")
> plot(deby$parent.beak.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Correlation_fledgling tarsus vs parent beak", xlab="Bombed_beak", ylab="Bomed_fledglingtarsus")
> plot(deby$parent.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Correlation_fledgling tarsus vs parent tarsus", xlab="Bombed_parent tarsus", ylab="Bomed_fledglingtarsus")

# Generating a correlation matrix
# Packages for csv exporting include readr and data.table
# write_csv(de6, "~/B/.csv") for readr
# fwrite(df, "~/B/.csv")for data.table
> de6.cor = cor(de6)
> de6.cor2 = cor(de6, method = c("spearman"))
> View(de6.cor)
> View(de6.cor2)
> palette = colorRampPalette(c("green", "white", "red")) (20) # define my color palette for the heatmap
> heatmap(x = de6.cor1, col = palette, symm = T) # draw my heatmap using the de6.cor and not de6.cor1
> write.csv(de6.cor, "~/BIOMETRY1/corrmatrix.csv", row.names=FALSE)
> library(writexl)
> write_xlsx(de6.cor,"~/BIOMETRY1/week7/corrmatrixexp.xlsx")
# OR my favorite ggplot
> install.packages("ggcorrplot")
> library(ggcorrplot)
> ggcorrplot(cor(de6))
# OR usign corrplot
> install.packages('corrplot')
> library(corrplot)
> corrplot(cor(de6))
# OR using Hmisc
> library(Hmisc)
> rcorr(as.matrix(de6))



