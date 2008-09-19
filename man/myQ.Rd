\name{myQ}
\alias{myQ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to set parameters for a "quartz" device }
\description{
  ~~ Useful only in particular instances. ~~
}
\usage{
myQ(w = 4, h = 4, mr = c(5, 4, 0.5, 1.5))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w}{ ~~ width ~~ }
  \item{h}{ ~~height ~~ }
  \item{mr}{ ~~margin (as in \code{par(mar=c(5,4,4,2))})~~ }
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (w = 4, h = 4, mr = c(5, 4, 0.5, 1.5)) 
{
    quartz(width = w, height = h)
    par(mar = mr)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }