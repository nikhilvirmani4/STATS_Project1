T=replicate(n=10000,max(rexp(1,rate=1/10),rexp(1,rate=1/10)))

T_int=as.integer(T)

v1<-unlist(T_int)

hist(v1, breaks=25,xaxp=c(0,100,20))

curve(0.2*exp(-0.1*x) - 0.2*exp(-0.2*x), from=1, to=50)

#Inference from the below two graphs- The histogram and the density plot is for same
#variable; one is via simulation and other is via the mathematical formula.
#The shapes of both the plots are same.

mean(v1)

df=as.data.frame(table(v1))

df

df_gt_15=df[16:60,]

a=df_gt_15[,'Freq']

a

sum(a)/10000


