\name{SIR}
\alias{SIR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ The S-I-R epidemilogical disease model }
\description{
  The S-I-R epidemilogical disease model, for use with  \code{ode} in the \code{deSolve} package.
}
\usage{
SIR(t, y, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{ times points for which values will be returned }
  \item{y}{ the vector of disease states of hosts (S, I, R) }
  \item{p}{ a vector of parameters }
}
\details{
The user does not put these directly into this function, but rather uses \code{ode} in the \code{deSolve} package.
}
\value{
  Returns of list of one component (required by \code{ode}).
}
\references{
S.P. Ellner and J. Guckenheimer. Dynamic Models in Biology. Princeton University Press, 2006.

W.O. Kermack and W.G. McCormick. A contribution to the mathematical theory of epidemics. Proceedings of the Royal Society, Series A, 115:700-721, 1927.

M.H.H. Stevens. 2009. A Primer of Ecology with R. Use R! Series. Springer.
 }
\author{  Hank Stevens <HStevens@muohio.edu>  }
\seealso{ \code{\link{ross}}, \code{\link{SIRf}}, \code{\link{SIRbd}}  }
\examples{
N <- 10^3; I <- R <- 1; S <- N - I - R
parms <- c(B=.01, g=4)
months <- seq(0, 3, by=0.01)
require(deSolve)
SIR.out <- data.frame( ode(c(S,I,R), months, SIR, parms) )
matplot(months, SIR.out[,-1], type='l')
legend('right', c('R', 'I', 'S'), lty=3:1, col=3:1, bty='n')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
