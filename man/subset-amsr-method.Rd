% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amsr.R
\docType{methods}
\name{subset,amsr-method}
\alias{subset,amsr-method}
\title{Subset an amsr Object}
\usage{
\S4method{subset}{amsr}(x, subset, ...)
}
\arguments{
\item{x}{A \code{amsr} object, i.e. one inheriting from \code{\link{amsr-class}}.}

\item{subset}{An expression indicating how to subset \code{x}.}

\item{...}{Ignored.}
}
\value{
An \code{amsr} object.
}
\description{
This function is somewhat analogous to
\code{\link{subset.data.frame}}, but only one independent variable may be
used in \code{subset} in any call to the function, which means that
repeated calls will be necessary to subset based on more than one
independent variable (e.g. latitude and longitude).
}
\examples{
\dontrun{
library(oce)
earth <- read.amsr("f34_20160102v7.2.gz") # not provided with oce
fclat <- subset(earth , 45<=latitude & latitude <= 49)
fc <- subset(fclat , longitude <= -47 & longitude <= -43)
plot(fc)
}
}
\seealso{
Other things related to \code{amsr} data: \code{\link{[[<-,amsr-method}},
  \code{\link{amsr-class}},
  \code{\link{composite,amsr-method}},
  \code{\link{download.amsr}},
  \code{\link{plot,amsr-method}}, \code{\link{read.amsr}},
  \code{\link{summary,amsr-method}}

Other functions that subset \code{oce} objects: \code{\link{subset,adp-method}},
  \code{\link{subset,adv-method}},
  \code{\link{subset,argo-method}},
  \code{\link{subset,cm-method}},
  \code{\link{subset,coastline-method}},
  \code{\link{subset,ctd-method}},
  \code{\link{subset,echosounder-method}},
  \code{\link{subset,lobo-method}},
  \code{\link{subset,met-method}},
  \code{\link{subset,oce-method}},
  \code{\link{subset,odf-method}},
  \code{\link{subset,rsk-method}},
  \code{\link{subset,sealevel-method}},
  \code{\link{subset,section-method}},
  \code{\link{subset,topo-method}}
}
\author{
Dan Kelley
}
