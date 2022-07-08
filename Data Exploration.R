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
[53] 11.630068 19.793615 11.927432 18.002974 11.891034 18.804691 17.976538 19.371692 18.363736 18.009157 18.937246 18.598597 11.888593
[66] 17.962827 12.041392 11.807312 12.032198 12.072852 17.905281 11.656623 11.648097 11.967299 19.407759 18.172671 18.001723 12.012457
[79] 11.985714 11.609411 18.304600 11.365758 18.141593 11.746602 11.214324 11.517571 11.838572 11.227381 18.139408 11.165268 12.151761
[92] 18.465523 11.517227 11.399899 18.311951 10.566287 12.106606 11.394074 18.055541 11.827145 18.101031 17.856036 12.031648 17.864516
[105] 11.725623 17.848356 18.312574 19.154745 12.151073 18.551474 17.960819 11.507983 18.248986 19.169724 11.826813 17.868888 11.862683
[118] 12.133356 10.749583 11.833938 18.821026 17.988342 18.874882 19.066757 18.016675 18.156975 19.703521 18.076573 10.984297 11.133047
[131] 18.108830 18.625977 12.151024 18.014557 19.345957 11.055827 18.204546 17.863167 12.152511 11.833357 11.725320 18.256343 17.991284
[144] 12.057140 11.929980 19.610047 11.818616 11.698742 18.201330 17.885034 12.109452 11.689701 18.278181 17.981886 17.988795 12.070339
[157] 11.472551 11.998699 17.923990 12.060309 11.041026 11.607884 12.083276 11.532159 17.925337 11.812764 11.139726 18.487451 17.886883
[170] 12.163368 18.808604 17.871244 11.004137 18.390544 10.280699 17.835749 11.859461 10.748538 18.297869 17.882460 18.903369 12.154079
[183] 18.126092 18.116705 12.143406 11.592886 18.563466 19.886274 11.845968 12.048208 18.814143 17.961983 11.043852 18.062135 18.242614
[196] 18.096172 19.171909 17.910272 19.412784 18.368161 11.570312 10.576883 12.039215 17.864591 18.572874 12.148970 18.724143 18.868426
[209] 17.983638 18.076379 11.858742 17.925148 17.933758 17.867688 12.120147 19.381711 18.363652 17.877138 18.075808 11.208980 11.581117
[222] 18.310208 18.492358 11.853725 18.703982 18.261612 18.510329 11.946882 11.963556 18.301639 18.546722 18.931276 11.613477 18.370655
[235] 18.105930 20.229977 11.682810 10.146309 18.174227 18.199528 17.948503 11.807133 11.815205 18.903844 18.003442 17.885092 18.075411
[248] 18.427697 18.048685 10.662202 11.602826 11.930908 11.966343 18.333614 18.293088 11.519582 11.898488 11.565748 12.123145 18.252240
[261] 17.898841 11.566642 18.110730 18.160375 18.843850 12.152592 12.120034 11.481293 11.149227 12.005182 12.039191 18.004688 12.055151
[274] 11.636461 11.927022 18.208696 17.891396 11.735362 17.947045 18.587210 18.223156 18.071588 19.547188 18.529631 18.019872 18.030736
[287] 18.674827 11.095586 19.432350 17.864775 18.008051 11.983424 11.898831 18.019768 11.333013 18.046226 18.551659 18.173350 17.951598
[300] 11.673806 11.700133 11.847084 17.977697 19.667658 18.008149 11.314725 17.993514 11.825908 18.092198 19.470527 11.924013 18.093211
[313] 18.528241 11.861869 18.612311 18.024855 19.213286 10.030512 17.838917 12.071352 17.989246 11.437870 11.423965 18.723437 18.492897
[326] 11.388166 19.350056 19.399192 12.140295 18.121124 18.522726 18.329212 18.056212 11.498849 18.168836 11.466473 18.869636 11.783143
> summary(de6$bombed)
No  Yes 
4485 4485 
> deb <- subset(de6medata, bombed == "No")
> deby <- subset(de6medata, bombed == "Yes")
> library(ggplot2)
> require(ggplot2)
> ggplot(data=de6medata, aes(x=bombed, y=de6medata$fledgling.tarsus.mm)) + geom_boxplot(aes(fill=bombed))
> par(mfrow = c(1, 2))
> boxplot(deb$fledgling.tarsus.mm, method = "jitter", notch=TRUE, main="Fledgling tarsus size_boxplot", ylab="Fledgling tarsus size", xlab="No", col = "grey", whiskcol=c("green"), outcol=c("blue"), outbg=c("grey"), staplecol=c('violet'), medcol=c("red"), boxcol=c("yellow"), outcex=1.5, outpch=21 )
> boxplot(deby$fledgling.tarsus.mm, method = "jitter", notch=TRUE, main="Fledgling tarsus size_boxplot", ylab="Fledgling tarsus size", xlab="Yes", col = "grey", whiskcol=c("green"), outcol=c("blue"), outbg=c("grey"), staplecol=c('violet'), medcol=c("red"), boxcol=c("yellow"), outcex=1.5, outpch=21 )
> par(mfrow = c(1, 3))
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch="*", col="red", cex=2)
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch="20", col="red", cex=2)
> plot(deb$fledgling.tarsus.mm, deby$fledgling.tarsus.mm, xlim=c(0, 25), ylim=c(0, 25), main = "Homogeneity", xlab="Bombed_fledgling tarsus", ylab="Not bomed_fledgling tarsus", pch=".", col="red", cex=2)
> abline(lm(deb$fledgling.tarsus.mm ~ deby$fledgling.tarsus.mm), col="blue", lwd=3, lty=2)
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




