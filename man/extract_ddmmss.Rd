% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_ddmmss.R
\name{extract_ddmmss}
\alias{extract_ddmmss}
\title{Convert GGMMSS coordinate to decimal number.}
\usage{
extract_ddmmss(x, test_range = T)
}
\arguments{
\item{x}{character, it must be in the format DDDMMSS. A minus or plus sign is allowed, i.e. +DDDMMSS or
-DDDMMSS are accepted (or +/-MMSS, +/-MSS, +/-SS, +/-S).}

\item{test_range}{logical, if set to TRUE a warning
message is issued if the range of the coordinates (either seconds, minutes or degrees) are outside reasonable values.
See Details below.}
}
\value{
The coordinate as a decimal number.
}
\description{
\code{extract_ddmmss} extracts the degrees, minutes and seconds from the input DDMMSS and converts it
to a decimal number.
}
\details{
The coordinates in the input \code{x} must be DDDMMSS, +DDDMMSS or -DDDMMSS.
The allowed range for seconds and minutes is \link{-60, 60}.
However, we allow for degrees to be in the range \link{-360, 360}, not the usual \link{-180, 180} for longitude or
\link{-90, 90} for latitude.

Strings with more than 8 characters are not allowed. In those strings with 8 characters, the leftmost character
must be a plus or minus sign. That is, "+1234556" (123 degrees, 45 minutes and 56 seconds) and "-1234567" are fine,
but not "+12345534", "+01234556", "-1234556" or "+01234556", for example.
}
\examples{
# Result is 34.36556
extract_ddmmss("342156")

# Result is -434.3656 with a warning.
extract_ddmmss("-4342156")

# Same without warning.
extract_ddmmss("-4342156", F)
}
