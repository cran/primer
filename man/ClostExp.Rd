% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/primer-package.R
\docType{data}
\name{ClostExp}
\alias{ClostExp}
\title{Closterium Population Data}
\format{
A data frame with 144 observations on the following 5 variables.
\describe{ \item{Nutrients}{a factor with levels \code{high}
\code{low}} \item{No.per.ml}{a numeric vector} \item{Day}{a
numeric vector} \item{rep}{a factor with levels \code{a} \code{b}
\code{c} \code{d}} \item{ID}{an ordered factor with levels
\code{a.low} < \code{d.low} < \code{c.low} < \code{b.low} < \code{c.high} <
\code{a.high} < \code{d.high} < \code{b.high}} }
}
\source{
Stevens, M. H. H. and Steiner, C. E. (2006) Effects of predation and
nutrient enrichment on a food web with edible and inedible prey.
\emph{Freshwater Biology}, \bold{51}, 666--671.
}
\description{
Data set from an experiment testing whether trophic heterogeneity influences
long term population sizes.
}
\examples{

data(ClostExp)
#lattice::xyplot(log10(No.per.ml) ~ Day|Nutrients, data=ClostExp, groups=rep, type='l')

}
\references{
Stevens, M.H.H. (2009) \emph{A Primer of Ecology with R}. Use R!
Series. Springer.
}
\keyword{datasets}
