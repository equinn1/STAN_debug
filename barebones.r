y<-c(1.0,2.1,3.4,5.7,6.1,8.2,9.0)
x<-1:length(y)
N<-length(y)

library(rstan)                                #make sure rstan is available
#rstan_options(auto_write = TRUE)              #use multiple cores
#options(mc.cores = parallel::detectCores())   #if we have them
set_cppo(mode="debug")
stanfit<-stan("barebones.stan",chains=1)       #call STAN using defaults
print(stanfit)