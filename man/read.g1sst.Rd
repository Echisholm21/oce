% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/g1sst.R
\name{read.g1sst}
\alias{read.g1sst}
\title{Read a G1SST file}
\usage{
read.g1sst(filename)
}
\arguments{
\item{filename}{name of a netcdf file containing G1SST data.}
}
\value{
An object of \code{\link{g1sst-class}}.
}
\description{
Read a G1SST file in the netcdf format provided by the ERDAPP server [1].
}
\details{
As noted in the documentation for \code{\link{g1sst-class}}, one
must be aware of the incorporation of model simulations in the
\code{g1sst} product. For example, the code presented below
might lead one to believe that the mapped field represents
observations, whereas in fact it can be verified by
consulting [2] (clicking and unclicking the radio button to
show just the data) that the field mostly derives from simulation.
}
\examples{
\dontrun{
# Construct query, making it easier to understand and modify.
day <- "2016-01-02"
lon0 <- -66.5
lon1 <- -64.0
lat0 <- 44
lat1 <- 46
source <- paste("http://coastwatch.pfeg.noaa.gov/erddap/griddap/",
                "jplG1SST.nc?",
                "SST\%5B(", day, "T12:00:00Z)",
                "\%5D\%5B(", lat0, "):(", lat1, ")",
                "\%5D\%5B(", lon0, "):(", lon1, ")",
                "\%5D", sep="")
if (!length(list.files(pattern="^a.nc$")))
    download.file(source, "a.nc")
d <- read.g1sst("a.nc")
plot(d, "SST", col=oceColorsJet)
data(coastlineWorldFine, package="ocedata")
lines(coastlineWorldFine[['longitude']],coastlineWorldFine[['latitude']])
}

}
\references{
1. ERDDAP Portal \url{http://coastwatch.pfeg.noaa.gov/erddap/}
2. JPO OurOcean Portal \code{http://ourocean.jpl.nasa.gov/SST/}
(link worked in 2016 but was seen to fail 2017 Feb 2).
}
\seealso{
Other things related to satellite data: \code{\link{g1sst-class}},
  \code{\link{plot,satellite-method}},
  \code{\link{satellite-class}},
  \code{\link{summary,satellite-method}}
}
\author{
Dan Kelley
}
