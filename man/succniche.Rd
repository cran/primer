\name{succniche}
\alias{succniche}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ A four-state model of successional dynamics }
\description{
  This is the four-state, two-species model of the succession-niche model, after Pacala and Rees (1998). For use with \code{ode} in the \code{deSolve} package.
}
\usage{
succniche(t, y, params)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{ Argument for the time point at integration }
  \item{y}{  A vector of length four, for states, E, M, S, and R.  }
  \item{params}{ Vector or list of parameters }
}
\value{
   Returns a list of length one, for use with \code{ode} in the \code{deSolve} package.
  \item{Component 1 }{vector of the state variable (a scalar for the proportion of sites occupied).}
}
\references{
S.W. Pacala and M. Rees. Models suggesting field experiments to test two hypotheses explaining successional diversity. The American Naturalist, 152:729-737, 1998.

M.H.H. Stevens.  A Primer of Ecology with R. Use R! Series. Springer. 2009.
 }

\author{  Hank Stevens <HStevens@muohio.edu>  }
\seealso{ \code{\link{levins}}, \code{\link{compcol}}, \code{\link{compcolM}}  }
\examples{
params.suc <- c(a=7, c=0.2, g=.1, m=0.04, D=0)
t=seq(0,50,.1)
init.suc <- c(S=0, E=0.5, M=0.5, R=0.00)
ccg.out <- data.frame(ode(init.suc, t, succniche, params.suc))
matplot(t, ccg.out[,-1], type="l", ylab="Relative Frequency", 
         xlab="Time", ylim=c(0,1) )
legend("right", colnames(ccg.out)[5:2], lty=4:1,  bty="n")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }