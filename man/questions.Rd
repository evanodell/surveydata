% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/questions.R
\name{questions}
\alias{questions}
\title{Returns a list of all the unique questions in the surveydata object.}
\usage{
questions(x, ptn = pattern(x))
}
\arguments{
\item{x}{Object to coerce to surveydata}

\item{ptn}{A list with two elements, \code{sep} and \code{exclude}.  See \code{\link[=pattern]{pattern()}} and \code{\link[=which.q]{which.q()}} for more detail.}
}
\value{
numeric vector
}
\description{
In many survey systems, sub-questions take the form Q1_a, Q1_b, with the main question and sub-question separated by an underscore. This function conveniently returns all of the main questions in a \code{\link[=surveydata]{surveydata()}} object. It does this by using the \code{\link[=pattern]{pattern()}} attribute of the surveydata object.
}
\examples{
# Basic operations on a surveydata object, illustrated with the example dataset membersurvey

class(membersurvey)

questions(membersurvey)

which.q(membersurvey, "Q1")
which.q(membersurvey, "Q3")
which.q(membersurvey, c("Q1", "Q3"))

question_text(membersurvey, "Q3")
question_text_unique(membersurvey, "Q3")
question_text_common(membersurvey, "Q3")

# Extracting columns from a surveydata object

head(membersurvey[, "Q1"])
head(membersurvey["Q1"])
head(membersurvey[, "Q3"])
head(membersurvey[, c("Q1", "Q3")])

# Note that the result is always a surveydata object, even if only one column is extracted

head(membersurvey[, "id"])
str(membersurvey[, "id"])

}
\seealso{
which.q

Other Question functions: \code{\link{question_text_common}},
  \code{\link{question_text_unique}},
  \code{\link{question_text}},
  \code{\link{split_common_unique}}, \code{\link{which.q}}
}
\concept{Question functions}
\keyword{Questions}
