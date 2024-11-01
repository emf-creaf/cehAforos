% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build_ddmmss.R
\name{build_ddmmss}
\alias{build_ddmmss}
\title{Make ddmmss/dddmmss strings from numeric coordinates}
\usage{
build_ddmmss(x)
}
\arguments{
\item{x}{\code{numeric} numeric vector containing the coordinates to convert into string.}
}
\value{
A \code{character} vector of the same length as \code{x}.
Strings will have a minimum length of 6 characters ("ddmmss" case), without
the sign, and a maximum length of 8 characters, including the sign ("-dddmmss" case).
}
\description{
\code{build_ddmmss} builds character string with coordinates of the type +/-ddmmss, or +/-dddmmss
from coordinates in numeric form,
where dd/ddd, mm and ss stand for degrees, minutes and seconds, respectively.
}
\details{
If the input is negative, the output will also be negative.
That would be equivalent to a -ddmmss/-dddmmsss case.

The output string will always have 6 or 7 characters (ddmmss or dddmmss).
If the input number is negative, the output will then have 7 ot 8 characters
(-ddmmss or -dddmmss).
}
\examples{
x <- c("-25005", "2560032", "25000")
y <- extract_ddmmss(x)

# Next is exactly as 'x', but with an extra zero for degrees.
z <- build_ddmmss(y)
}
