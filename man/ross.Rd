\name{ross}
\alias{ross}
\docType{data}
\title{ Weekly deaths from bubonic plague in Bombay in 1905--06}
\description{
 Kermack and McCormick (1927) provided data on the number of plague deaths per week in Bombay in 1905--06 (Bombay is the former name for the Indian coastal city  Mumbai. It is the capital of Maharashtra and is one of the largest cities in the world.).
}
\usage{data(ross)}
\format{
  A data frame with 32 observations on the following 2 variables.
  \describe{
    \item{\code{Week}}{a numeric vector}
    \item{\code{CumulativeDeaths}}{a numeric vector}
  }
}

\source{
 Data provided kindly by S.P. Ellner (Cornell University)
}
\references{
W.O. Kermack and W.G. McCormick. A contribution to the mathematical theory of epidemics. Proceedings of the Royal Society, Series A, 115:700-721, 1927.
}
\examples{
data(ross)
str(ross) ; plot(CumulativeDeaths ~ Week, data=ross, type='b')
}
\keyword{datasets}
