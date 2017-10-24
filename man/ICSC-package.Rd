\name{ICSC-package}
\alias{ICSC-package}
\alias{ICSC}
\docType{package}
\title{
\packageTitle{ICSC}
}
\description{
\packageDescription{ICSC}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{ICSC}
\packageIndices{ICSC}
 A procedure to do the Score Card for Taian branch, Inter-Credict
}
\author{
\packageAuthor{ICSC}

Maintainer: \packageMaintainer{ICSC}
}
\references{
  [1] Taian branch
  [2] The president's office of strategic center

}
\examples{
 # not run 
 library(tidyverse)
 library(ICSC)
 #-----CutDat Example---------------------------------
CutDat
 #-----CutX Example-----------------------------------
CutX(X,CutDat=CutDat)
 #-----getWOE Example --------------------------------
getWOE(y,totalgood,totalbad)
 #-----traindat Example-------------------------------
traindat(cutdatx,totalgood,totalbad)
 #-----ScoreCard Example------------------------------
ScoreCard(cutdatx,trainWOE,p=20/log(2),q=600-20*log(15)/log(2))

}
