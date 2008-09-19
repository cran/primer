\name{DemoInfo}
\alias{DemoInfo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Demographic Analyses }
\description{
  Given a demographic projection matrix (aka transition matrix), this calculates \eqn{\lambda}{lambda}, stable age/stage structure, reproductive value, sensitivity, and elasticity.
}
\usage{
DemoInfo(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{ A matrix of demographic transitions (Leslie [age] or Lefkovitch [stage] matrix) }
}

\value{
 Returns a list with these components.
  \item{lambda }{A scalar, long term asymptotic growth rate.}
  \item{SSD }{A vector of stable age/stage structure}
  \item{RV }{A vector of reproductive value}
  \item{Sensitivities }{A matrix of sensitivities}
  \item{Elasticities }{A matrix of elasticities}
  \item{PPM }{A population projection matrix}
}
\references{ H. Caswell.2001. Matrix Population Models: Construction, Analysis, and Interpretation. Sinauer Associates, Inc., Sunderland, MA, USA, 2nd ed. edition.

S.P. Ellner and J. Guckenheimer. 2006. Dynamic Models in Biology. Princeton University Press.

M.H.H. Stevens. 2009. A Primer of Ecology with R. Use R!  Series. Springer.

 }
\author{ Hank Stevens (HStevens@muohio.edu)}
\seealso{ \code{\link{DemoBoot}},
	  \code{\link{ProjMat}},
 }
\examples{
### A two stage annual transition matrix
annual <- matrix( c( 0, 100, .025, 0), byrow=TRUE, nrow=2)
### Generate useful summaries
DemoInfo(annual)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }