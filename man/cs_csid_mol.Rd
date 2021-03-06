% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chemspider.R
\name{cs_csid_mol}
\alias{cs_csid_mol}
\title{Convert a CSID to a Molfile}
\usage{
cs_csid_mol(csid, token, parse = TRUE, verbose = TRUE, ...)
}
\arguments{
\item{csid}{character,  ChemSpiderID.}

\item{token}{character; security token.}

\item{parse}{should the molfile be parsed to a R object?
If \code{FALSE} the raw mol is returned as string.}

\item{verbose}{logical; should a verbose output be printed on the console?}

\item{...}{currently not used.}
}
\value{
If parse = FALSE then a charactersting,
  else a RMol-object (from \code{\link{parse_mol}})
}
\description{
Convert a CSID to a Molfile
}
\note{
A security token is neeeded. Please register at RSC
\url{https://www.rsc.org/rsc-id/register}
for a security token.
}
\examples{
\dontrun{
# Fails because no TOKEN is included
token <- '<YOUR-SECURITY-TOKEN>'
tric_mol <- cs_csid_mol(5363, token = token)
tric_mol
cs_csid_mol(5363, token = token, parse = FALSE)
}
}
\seealso{
This is a low level function. Please see \code{\link{cs_convert}} for the top level function.
}
\author{
Eduard Szoecs, \email{eduardszoecs@gmail.com}
}
