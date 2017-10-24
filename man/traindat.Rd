\name{traindat}
\alias{traindat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
traindat
}
\description{
 A function to compute training data's WOE
 }
\usage{
traindat(cutdatx,totalgood,totalbad)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cutdatx}{
   A dataframe,tibble,tbl_df,cols like:cutx1,...cutx11
}

\item{totalgood}{
     Number rows of training data which y equal to 1.
}
 \item{totalbad}{
     Number rowsof training data which y equal to 0.
}
 
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
 NingXin,WangQianQian,DataXujing
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
traindat(cutdatx)  # we obtain WOE of every cols
}
