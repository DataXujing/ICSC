\name{getWOE}
\alias{getWOE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 getWOE
}
\description{
A function to compute WOE value
}
\usage{
getWOE(y,totalgood,totalbad)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
     A vector which values are 0 or 1.
}

 \item{totalgood}{
     Number rows of training data which y equal to 1.
}
 \item{totalbad}{
     Number rowsof training data which y equal to 0.
}


}
\details{
%%  Non
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% Non
}
\author{
 NingXin,WangQianQian,DataXujing
}
\note{
%%  Non
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
getWOE(y,totalgood,totalbad)
}
