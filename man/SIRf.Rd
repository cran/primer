% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SIRf.R
\name{SIRf}
\alias{SIRf}
\title{The S-I-R Epidemilogical Disease Model with Frequency Dependent Transmission}
\usage{
SIRf(t, y, p)
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
The S-I-R epidemilogical disease model with frequency dependent
transmission, for use with \code{ode} in the \code{deSolve} package.
}
\details{
The user does not put these directly into this function, but rather uses
\code{ode} in the \code{deSolve} package.
}
\examples{

R <- 0; S <- 1000;  I <- 1000; N <- S+I+R
parmsf <- c(B=1, g=1)
Months <- seq(0, 8, by=0.1)
outf <- ode(c(S,I,R), Months, SIRf, parmsf)
matplot(Months, outf[,-1], type='l', ylab="Prevalence (I/N)")
legend('right', legend=c('S','I','R'), lty=1:3, col=1:3, bty='n')

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
\code{\link{ross}}, \code{\link{SIRd}}, \code{\link{SIRbd}},
\code{\link[deSolve]{ode}}
}
\author{
Hank Stevens <HStevens@muohio.edu>
}
\keyword{methods}
