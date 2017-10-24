library(tidyverse)

#cutdat rule

CutDat <- list(cutx1 =  c(-Inf,3000,6000,9000,12000,15000,20000,30000,40000,50000,100000,Inf),
               cutx2= c(-Inf,0,1,2,3,5,Inf),
               cutx3 = c(-Inf,3000,6000,9000,12000,15000,20000,30000,40000,50000,80000,100000,150000,Inf),
               cutx4 = c(-Inf,0,100,500,1000,3000,4000,5000,10000,Inf),
               cutx5 = c(-Inf,0,0.001,0.005,0.01,0.1,0.5,0.9,Inf),
               cutx6 = c(-Inf,0,1,2,3,5,8,Inf),
               cutx7 = c(-Inf,0,1,3,Inf),
               cutx8= c(-Inf,0.3,0.5,Inf),
               cutx9 = c(-Inf,30,35,40,50,Inf),
               cutx10 = c(-Inf,0,Inf))


#cut function for training data or testing data

CutX <- function(X,CutDat=CutDat){
  if ('y' %in% names(X))
    cutdatX <- tibble(index = 1:dim(X)[1],'y'=X$y)
  else
    cutdatX <- tibble(index = 1:dim(X)[1])
  X = data.frame(X)
  
  for (i in 1:11){
    if (i <= 10)
      cutdatX[paste0('cutx',i)] = assign(paste0('cutx',i),cut(X[,i],CutDat[[i]]))
    
    else
      cutdatX[paste0('cutx',i)]=assign(paste0('cutx',i),ordered(X[,i],levels=1:31))
    
  }
  
  cutdatX[-1]
  
}


#WOE function for training data

getWOE <- function(y,totalgood,totalbad)
{
  Good <- max(length(y[y==1]),0.5)
  Bad <- max(length(y[y==0]),0.5)
  WOE <- log((Bad/totalbad)/(Good/totalgood),base = exp(1))
  return(WOE)
}

#WOEDat value for training data

traindat <- function(cutdatx,totalgood,totalbad){
  traindatx <- tibble(index = 1:dim(cutdatx)[1])
  
  for (i in 1:11){
    cachedat <- cutdatx[,c(paste0('cutx',i),'y')]
    cachedat1 <- cachedat%>%group_by_(paste0('cutx',i))%>%mutate(woe = getWOE(y,totalgood,totalbad))
    traindatx[paste0('woex',i)] = tbl_df(cachedat1)%>%select(woe)
  }
  
  traindatx['y'] <- 1-cutdatx['y']
  
  traindatx
}


#logistmodel+scoreCard

ScoreCard <- function(cutdatx,trainWOE,p=20/log(2),q=600-20*log(15)/log(2)){
  result = list()
  trainWOE <- trainWOE
  glmfit = glm(y~.,data = trainWOE,family = binomial(link = logit))
  coe = (glmfit$coefficients)
  
  Score=q + p*(as.numeric(coe[1])+as.numeric(coe[2])*trainWOE$woex1+as.numeric(coe[3])*trainWOE$woex2 +as.numeric(coe[4])*trainWOE$woex3+
                 p*as.numeric(coe[5])*trainWOE$woex4+p*as.numeric(coe[6])*trainWOE$woex5+
                 p*as.numeric(coe[7])*trainWOE$woex6+p*as.numeric(coe[8])*trainWOE$woex7+
                 p*as.numeric(coe[9])*trainWOE$woex8+p*as.numeric(coe[10])*trainWOE$woex9+
                 p*as.numeric(coe[11])*trainWOE$woex10+p*as.numeric(coe[12])*trainWOE$woex11)
  
  result$Score = Score
  result$ScoreCard = bind_cols(cutdatx,trainWOE)
  result$coeff = (glmfit$coefficients)
  
  result
  
  
}
