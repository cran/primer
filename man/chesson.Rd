% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chesson.R
\name{chesson}
\alias{chesson}
\title{Two-species model of the storage effect}
\usage{
chesson(
  alpha = c(1.1 * 1e-05, 1e-05),
  d = 0.1,
  years = 10,
  N0 = c(1000, 1e+05),
  w = c(0.6, 1),
  env.var = 1,
  specialization = 1,
  spread = 0.67,
  type = 1
)
}
\arguments{
\item{alpha}{a vector of length 2; the negative effects of all individuals
(of both species) on each population -- typically different among species.}

\item{d}{disturbance rate; the proportion of all individuals killed at each
time step.}

\item{years}{numbers of time steps}

\item{N0}{vector of length 2; initial abundances.}

\item{w}{vector of length 2; average fitnesses for each species.}

\item{env.var}{degree of environmental variability.}

\item{specialization}{determines the narrowness of each species fitness
response.}

\item{spread}{determines how far apart the peak fitness responses are.}

\item{type}{determines the form of \emph{C}, the negative effect of
competition.}
}
\value{
Returns a list of length one, for use with \code{ode} in the
\code{deSolve} package.  \item{Component 1 }{vector of the state variables,
y.}
}
\description{
Simulates a fluctuating environment over time, and two species' responses to
the environment, after Chesson (1994).
}
\details{
The argument \code{type} controls the value of \eqn{e^C}, the effect of
competition on reproduction, where the annual finite rate of increase is
\eqn{R=e^{E-C}}{R=e^(E-C)}.  \code{type = 1} causes \eqn{e^C = \alpha_i
N_{J,i}}{e^C = alpha[i] N[J,i]}, that is, a species-specific fixed fraction
of juveniles that depends on each species response to competition. This is
illustrated in a for-loop in Stevens (2009, \emph{Ch. 9, Storage Effect,
Simulating Dynamics}). Any other value for \code{type} results in the same
negative effect on both species that depends on the number of juveniles and
the disturbance rate.
}
\examples{

out <- chesson(years=50)
layout(matrix(1:4, nc=2))
matplot(out[["time"]], out[["Ns"]], type='l', lty=c(1:3),
        xlab="Time", ylab="N", log="y")
plot(out[["time"]][-1], out[["env"]], type='l',
     xlab="Time", ylab="Environment")
matplot(out[["env"]], out[["Es"]], xlab="Environment",
 ylab="Density-independent reproduction")
matplot(out[["env"]], out[["Rs"]], xlab="Environment",
 ylab="Annual growth rate")


}
\references{
Chesson, P.L. (1994) Multispecies competition in variable environments.
\emph{Theoretical Population Biology}, \bold{45}, 227--276.

Stevens. M.H.H. (2009) \emph{A Primer of Ecology with R}. Use R! Series.
Springer.
}
\seealso{
\code{\link{succniche}}
}
\author{
Hank Stevens (HankStevens@miamioh.edu)
}
\keyword{methods}
