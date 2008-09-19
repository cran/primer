\name{gotelli}
\alias{gotelli}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Propagule rain metapopulation model  }
\description{
   A function for the Propagule rain or mainland-island metaapopulation dynamics, for use with \code{ode} in the \code{deSolve} package.
}
\usage{
gotelli(t, y, parms)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{ Argument for time }
  \item{y}{ A scalar for the population variable }
  \item{parms}{ Vector or list of parameters }
}

\value{
   Returns a list of length one, for use with \code{ode} in the \code{deSolve} package.
  \item{Component 1 }{vector of the state variable (a scalar for the proportion of sites occupied).}
}
\references{ 
N. Gotelli. Metapopulation models: the rescue effect, the propagule rain, and the core-satellite hypothesis. The American Naturalist, 138:768--776, 1991.

M.H.H. Stevens. A Primer of Ecology with R. Use R!  Series. Springer, 2009.
}
\author{  Hank Stevens <HStevens@muohio.edu>  }
\seealso{ \code{\link{gotelli}}, \code{\link{hanski}},\code{\link{lande}}, \code{\link{MetaSim}} \code{\link{clogistic}}  }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (t, y, parms) 
{
    p <- y[1]
    with(as.list(parms), {
        dp <- ce * (1 - p) - e * p
        return(list(dp))
    })
  }

library(deSolve)
p <- c(ce=.1, e=.01)
time <- 1:10
initialN <- .3
out <- ode(y=initialN, times=time, func=gotelli, parms=p) 
plot(time, out[,-1], type='l')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }