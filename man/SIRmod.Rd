% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SIRmod.R
\name{SIRmod}
\alias{SIRmod}
\title{The S-I-R Epidemilogical Disease Model}
\usage{
SIRmod(t, y, p)
}
\arguments{
\item{t}{times points for which values will be returned}

\item{y}{the vector of disease states of hosts (S, I, R)}

\item{p}{a vector of parameters}
}
\value{
Returns of list of one component (required by \code{ode}).
}
\description{
The S-I-R epidemiological disease model with births and deaths (population
dynamics), for use with \code{ode} in the \code{deSolve} package.  This
model uses scaled transmission, where z controls the degree of density- and frequency-dependence.
}
\details{
The user does not put these directly into this function, but rather uses
\code{ode} in the \code{deSolve} package.
}
\examples{

library(deSolve)
N <- 10^6; R <- 0; I <- 1; S <- N - I - R
g <- 1/(13/365); b <- 1/50; z <- 0;
age <- 5; R0 <- 1 + 1/(b*age)
B <- R0 * (g + b) / N
parms <- c(B = B, g = g, b = b, mu=b)
years <- seq(0,30, by=.1)
SIR.out <- data.frame(ode(c(S=S,I=I,R=R), years, SIRmod, parms, hmax=.01))
matplot(SIR.out[,1], sqrt(SIR.out[,-1]), type='l',
        lty=1:3, ylab="sqrt(No. of Individuals)", xlab='Years')
legend('right', c('S','I','R'), lty=1:3, col=1:3, bty='n')

}
\references{
Ellner, S.P. and Guckenheimer, J. (2006) \emph{Dynamic Models in
Biology}, Princeton University Press.

Kermack, W.O. and McCormick, W.G. (1927) A contribution to the mathematical
theory of epidemics. \emph{Proceedings of the Royal Society, Series A},
\bold{115}, 700--721.

Stevens, M.H.H. (2009) \emph{A Primer of Ecology with R}, Use R! Series.
Springer.
}
\seealso{
\code{\link{ross}}, \code{\link{SIRf}}, \code{\link{SIRd}}
}
\author{
Hank Stevens <Hank.Stevens@miamioh.edu>
}
\keyword{methods}
