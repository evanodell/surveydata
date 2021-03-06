% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleandata.R
\name{remove_dont_know}
\alias{remove_dont_know}
\title{Removes "Don't know" from levels and replaces with NA.}
\usage{
remove_dont_know(x, dk = "Don't Know")
}
\arguments{
\item{x}{Character vector or factor}

\item{dk}{Character vector, containing search terms, e.g. \code{c("Don't know", "Don't Know")}}
}
\value{
A factor with "Dont know" removed
}
\description{
Tests the levels of x contain any instances of "Don't know".  If so, replaces these levels with \code{NA}
}
\seealso{
Other Functions to clean data: \code{\link{encToInt}},
  \code{\link{fix_common_encoding_problems}},
  \code{\link{fix_levels_01_spss}},
  \code{\link{has_dont_know}}, \code{\link{intToEnc}},
  \code{\link{leveltest}},
  \code{\link{remove_all_dont_know}}
}
\concept{Functions to clean data}
\keyword{"clean}
\keyword{data"}
