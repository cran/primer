\name{DemoBoot}
\alias{DemoBoot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{  Demographic Resampling Function  }
\description{
   This resamples three specific data sets and calculates demographic statistics and bootstrapped confidence intervals. 
}
\usage{
DemoBoot(stagedat = NULL, fruitdat = NULL, seeddat = NULL, n = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stagedat}{  A data frame identical in form to the data frame of the same name. }
  \item{fruitdat}{  A data frame identical in form to the data frame of the same name. }
  \item{seeddat}{  A data frame identical in form to the data frame of the same name. }
  \item{n}{  Number of bootstrap replicates. }
}
\details{
   If necessary, more details than the description above 
}
\value{
  Returns a list of length \code{n}, where each element is the output of a demographic analysis (see \code{DemoInfo}).
}
\references{  H. Caswell. 2001. Matrix Population Models: Construction, Analysis, and Interpretation. Sinauer Associates, Inc., Sunderland, MA, USA, 2nd ed. edition.

S. P. Ellner and J. Guckenheimer. 2006. Dynamic Models in Biology. Princeton University Press.

M.H.H. Stevens. 2009. A Primer of Ecology with R. Use R! Series. Springer.

E.J. Berry, D.L. Gorchov,  B.A. Endress, and M.H.H. Stevens. 2008. Source-sink dynamics within a plant population: the impact of substrate and herbivory on palm demography. Population Ecology, 50:63--77.
  }
\author{ Hank Stevens (HStevens@muohio.edu) }

\seealso{\code{\link{DemoInfo}}, \code{\link{ProjMat}},
		\code{\link{stagedat}},
		\code{\link{fruitdat}},
		\code{\link{seeddat}},
  }
\examples{
data(stagedat); data(fruitdat); data(seeddat)
DemoBoot(stagedat = stagedat, fruitdat = fruitdat, seeddat = seeddat)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
