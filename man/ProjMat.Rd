\name{ProjMat}
\alias{ProjMat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Palm Data Resampling }
\description{
  A function to create a projection matrix from the Chamaedorea palm data sets. Specific to the forms of these data sets.
}
\usage{
ProjMat(stagedat, fruitdat, seeddat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stagedat}{ Data on the vegetative stage of individuals through time; see \code{\link{stagedat}}. }
  \item{fruitdat}{ Data on fruit production of individuals; see \code{\link{fruitdat}}. }
  \item{seeddat}{ Data on seed fates; see \code{\link{seeddat}}. }
}

\value{
 Returns a 5 x 5 projection matrix based on palm data.
}
\references{
  H. Caswell. Matrix Population Models: Construction, Analysis, and Interpretation. Sinauer Associates, Inc., Sunderland, MA, USA, 2nd ed. edition, 2001.

S. P. Ellner and J. Guckenheimer. Dynamic Models in Biology. Princeton University Press, 2006.

M.H.H. Stevens. A Primer of Ecology with R. Use R! Series. Springer, 2009.

E.J. Berry, D.L. Gorchov, B.A. Endress, and M.H.H. Stevens. Source-sink dynamics within a plant population: the impact of substrate and herbivory on palm demography. Population Ecology, 50:63-77, 2008.
 }


\seealso{\code{\link{DemoInfo}}, \code{\link{DemoBoot}},
		\code{\link{stagedat}},
		\code{\link{fruitdat}},
		\code{\link{seeddat}},
  }
\examples{
data(stagedat); data(fruitdat); data(seeddat)
ProjMat(stagedat, fruitdat, seeddat)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }