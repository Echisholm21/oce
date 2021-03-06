% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/met.R
\docType{data}
\name{met}
\alias{met}
\title{Sample met Object}
\source{
Environment Canada website on February 1, 2017
}
\description{
This is sample \code{met} object containing data for Halifax, Nova Scotia,
during September of 2003 (the period during which Hurricane Juan struck the
city).
}
\details{
The data file was downloaded with
\preformatted{
metFile <- download.met(id=6358, year=2003, month=9, destdir=".")
met <- read.met(metFile)
met <- oceSetData(met, "time", met[["time"]]+4*3600,
                 note="add 4h to local time to get UTC time")
}
Using \code{\link{download.met}} avoids having to navigate the
the awkward Environment Canada website, but it imposes the burden
of having to know the station number. See the documentation for
\code{\link{download.met}} for more details on station numbers.
}
\seealso{
Other datasets provided with \code{oce}: \code{\link{adp}},
  \code{\link{adv}}, \code{\link{argo}}, \code{\link{cm}},
  \code{\link{coastlineWorld}}, \code{\link{ctdRaw}},
  \code{\link{ctd}}, \code{\link{echosounder}},
  \code{\link{landsat}}, \code{\link{lisst}},
  \code{\link{lobo}}, \code{\link{ocecolors}},
  \code{\link{rsk}}, \code{\link{sealevelTuktoyaktuk}},
  \code{\link{sealevel}}, \code{\link{section}},
  \code{\link{topoWorld}}, \code{\link{wind}}

Other things related to \code{met} data: \code{\link{[[,met-method}},
  \code{\link{[[<-,met-method}}, \code{\link{as.met}},
  \code{\link{download.met}}, \code{\link{met-class}},
  \code{\link{plot,met-method}}, \code{\link{read.met}},
  \code{\link{subset,met-method}},
  \code{\link{summary,met-method}}
}
