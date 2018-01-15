#Source: Wagner, Agahajanian, and Bing (1968). Correlation of Performance
#Test Scores with Tissue Concentration of Lysergic Acid Diethylamide in
#Human Subjects. Clinical Pharmacology and Therapeutics, Vol.9 pp635-638.

LSD<-c(1.17,
2.97,
3.26,
4.69,
5.83,
6.00,
6.41)

MATH<-c(78.93,
58.20,
67.47,
37.47,
45.65,
32.92,
29.97)

#what should your tissue concentration be to get a grade of 
#75?


pomegranate<-rpois(1000,3)

intercept=0.1

slope=-0.5

wloss<-rnorm(1000,mean=intercept+slope*pomegranate,sd=10)
summary(lm(wloss~pomegranate))
