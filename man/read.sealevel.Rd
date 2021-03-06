% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sealevel.R
\name{read.sealevel}
\alias{read.sealevel}
\title{Read a Sealevel File}
\usage{
read.sealevel(file, tz = getOption("oceTz"), processingLog,
  debug = getOption("oceDebug"))
}
\arguments{
\item{file}{a connection or a character string giving the name of the file
to load.  See Details for the types of files that are recognized.}

\item{tz}{time zone.  The default value, \code{oceTz}, is set to \code{UTC}
at setup.  (If a time zone is present in the file header, this will
supercede the value given here.)}

\item{processingLog}{if provided, the action item to be stored in the log.
(Typically only provided for internal calls; the default that it provides is
better for normal calls by a user.)}

\item{debug}{an integer specifying whether debugging information is
to be printed during the processing. This is a general parameter that
is used by many \code{oce} functions. Generally, setting \code{debug=0}
turns off the printing, while higher values suggest that more information
be printed. If one function calls another, it usually reduces the value of
\code{debug} first, so that a user can often obtain deeper debugging
by specifying higher \code{debug} values.}
}
\value{
An object of \code{\link{sealevel-class}}.
}
\description{
Read a data file holding sea level data.  BUG: the time vector assumes GMT,
regardless of the GMT.offset value.
}
\details{
This function starts by scanning the first line of the file, from which it
determines whether the file is in one of two known formats: type 1, the
format used at the Hawaii archive centre, and type 2, the
comma-separated-value format used by the Marine Environmental Data Service.
(The file type is inferred by checking for the existence of the string
\code{Station_Name} on the first line of the file, indicating type 2.) If
the file is in neither of these formats, the user might wish to scan it
directly, and then to use \code{\link{as.sealevel}} to create a
\code{sealevel} object.
}
\examples{
\dontrun{
library(oce)
# this yields the sealevel dataset
sl <- read.oce("h275a96.dat")
summary(sl)
plot(sl)
m <- tidem(sl)
plot(m)
}

}
\references{
The Hawaii archive site at
\code{http://ilikai.soest.hawaii.edu/uhslc/datai.html} provides a graphical
interface for downloading sealevel data in Type 1, with format as described
at \code{http://ilikai.soest.hawaii.edu/rqds/hourly.fmt} (this link worked
for years but failed at least temporarily on December 4, 2016).  The MEDS
repository (\url{http://www.isdm-gdsi.gc.ca/isdm-gdsi/index-eng.html})
provides Type 2 data.
}
\seealso{
Other things related to \code{sealevel} data: \code{\link{[[,sealevel-method}},
  \code{\link{[[<-,sealevel-method}},
  \code{\link{as.sealevel}},
  \code{\link{plot,sealevel-method}},
  \code{\link{sealevel-class}},
  \code{\link{sealevelTuktoyaktuk}},
  \code{\link{sealevel}},
  \code{\link{subset,sealevel-method}},
  \code{\link{summary,sealevel-method}}
}
\author{
Dan Kelley
}
