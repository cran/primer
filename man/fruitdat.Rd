\name{fruitdat}
\alias{fruitdat}
\docType{data}
\title{ Chamaedorea Palm Fruit Data Set}
\description{
This data set provides the stage and number of fruits per individual in 2004.
}
\usage{data(fruitdat)}
\format{
  A data frame with 68 observations on the following 2 variables. Each row corresponds to an observation of one individual in 2004.
  \describe{
    \item{\code{Stage}}{a numeric vector; the life history stage of the palm.}
    \item{\code{Y2004}}{a numeric vector; the number of fruits produced by an individual.}
  }
}

\source{
E.J. Berry, D.L. Gorchov, B.A. Endress, and M.H.H. Stevens. 2008. Source-sink dynamics within a plant population: the impact of substrate and herbivory on palm demography. Population Ecology, 50:63-77.
}
\references{  
 Stevens. M.H.H. 2009. A Primer of Ecology with R. Use R! Series. Springer.}
\author{ Hank Stevens (HStevens@muohio.edu) }
\seealso{ \code{\link{DemoBoot}}, \code{\link{DemoInfo}}, \code{\link{seeddat}}, \code{\link{stagedat}} }
\examples{
data(fruitdat)
with(fruitdat, table(Stage, Y2004))
}
\keyword{datasets}
