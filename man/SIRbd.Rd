\name{SIRbd}
\alias{SIRbd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ The S-I-R epidemilogical disease model with births and deaths }
\description{
The S-I-R epidemilogical disease model with births and deaths (population dynamics), for use with  \code{ode} in the \code{deSolve} package. This model uses mass action transmission.
}
\usage{
SIRbd(t, y, p)
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
\seealso{ \code{\link{ross}}, \code{\link{SIRf}}, \code{\link{SIR}}  }
\examples{
library(deSolve)
N <- 10^6; R <- 0; I <- 1; S <- N - I - R
g <- 1/(13/365); b <- 1/50; 
age <- 5; R0 <- 1 + 1/(b*age)
B <- R0 * (g + b) / N
parms <- c(B = B, g = g, b = b, m=b)
years <- seq(0,30, by=.1)
SIRbd.out <- data.frame(ode(c(S=S,I=I,R=R), years, SIRbd, parms, hmax=.01)) 
matplot(SIRbd.out[,1], sqrt(SIRbd.out[,-1]), type='l', 
        lty=1:3, ylab="sqrt(No. of Individuals)", xlab='Years')
legend('right', c('S','I','R'), lty=1:3, col=1:3, bty='n')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }