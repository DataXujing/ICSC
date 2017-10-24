\name{ScoreCard}
\alias{ScoreCard}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ScoreCard
}
\description{
 Inter Credict Score Card Model
}
\usage{
ScoreCard(cutdatx,trainWOE,p=20/log2,q=600-20*log(15)/log2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cutdatx}{
 like the input of the function of traindat(),see ?traindat
}
  \item{trainWOE}{
like the output of the function of traindat(),see ?traindat
}
  \item{...}{
%%     ~~Describe \code{p} here~~
}
 
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
ScoreCard(cutdatx,trainWOE,p=20/log2,q=600-20*log(15)/log2)
# we obtain a list,you can use ScoreCard$Score(a vector),and 
# ScoreCard$ScoreCord(a tibble) to see the result
# the coefficients of the model(a vector)
}
