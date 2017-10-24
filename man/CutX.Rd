\name{CutX}
\alias{CutX}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  CutX
}
\description{
   Cut function for training data or testing data
}
\usage{
CutX(X,CutDat=CutDat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
     A Dataframe or tibble or tbl_df
}

  \item{CutDat}{
    The rule of cut data,details:?CutDat
}

}
\details{
 X at least order by x_1,x_2,...,x_11,y. When X is a testing data, it have no y variable.At last we obtain 
 the cutx1,...,cutx11 variable
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
CutX(X)
}
