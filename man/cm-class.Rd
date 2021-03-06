% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cm.R
\docType{class}
\name{cm-class}
\alias{cm-class}
\title{Class to Store Current Meter Data}
\description{
This class stores current meter data, e.g. from an Interocean/S4 device
or an Aanderaa/RCM device.  A file
containing Interocean/S4 data may be read with \code{\link{read.cm}}.
Alternatively, \code{\link{as.cm}} can be used to create \code{cm} objects.
Objects of this class can be
plotted with \code{\link{plot,cm-method}} or summarized with
\code{\link{summary,cm-method}}.
}
\section{Slots}{

\describe{
\item{\code{data}}{As with all \code{oce} objects, the \code{data} slot
for \code{cm} objects is a
\code{\link{list}} containing the main data for the object.
The key items stored in this slot are \code{time}, \code{u} and \code{v}.}

\item{\code{metadata}}{As with all \code{oce} objects, the \code{metadata} slot
for \code{cm} objects is a \code{\link{list}} containing
information about the \code{data} or about the object itself.
{}}

\item{\code{processingLog}}{As with all \code{oce} objects, the \code{processingLog} slot
for \code{cm} objects is a
\code{\link{list}} with entries describing the creation and evolution
of the object. The contents are updated by various \code{oce} functions to
keep a record of processing steps.  Object summaries and
\code{\link{processingLogShow}} both display the log.}
}}

\section{Modifying slot contents}{


Although the \code{[[<-} operator may permit modification of the contents
of \code{cm} objects (see \code{\link{[[<-,cm-method}}),
it is better to use \code{\link{oceSetData}}
and \code{\link{oceSetMetadata}}, because that will save an entry
in the \code{processingLog} to describe the change.
}

\section{Retrieving slot contents}{


The full contents of the \code{data} and \code{metadata} slots of a \code{cm}
object named \code{cm} may be retrieved in the standard R way. For example,
\code{slot(cm, "data")} and \code{slot(cm, "metadata")} return
the \code{data} and \code{metadata} slots, respectively. The
\code{\link{[[,cm-method}} operator can also be used to access slots,
with \code{cm[["data"]]} and \code{cm[["metadata"]]}, respectively.
Furthermore, \code{\link{[[,cm-method}} can be used to retrieve
named items (and potentially some derived items) within the
\code{metadata} and \code{data} slots, the former taking precedence
over the latter in the lookup. It is also possible
to find items more directly, using \code{\link{oceGetData}} and
\code{\link{oceGetMetadata}}, but this cannot retrieve derived items.
}

\seealso{
Other things related to \code{cm} data: \code{\link{[[,cm-method}},
  \code{\link{[[<-,cm-method}}, \code{\link{as.cm}},
  \code{\link{cm}}, \code{\link{plot,cm-method}},
  \code{\link{read.cm}}, \code{\link{subset,cm-method}},
  \code{\link{summary,cm-method}}

Other classes provided by \code{oce}: \code{\link{adp-class}},
  \code{\link{adv-class}}, \code{\link{argo-class}},
  \code{\link{bremen-class}},
  \code{\link{coastline-class}}, \code{\link{ctd-class}},
  \code{\link{lisst-class}}, \code{\link{lobo-class}},
  \code{\link{met-class}}, \code{\link{oce-class}},
  \code{\link{odf-class}}, \code{\link{rsk-class}},
  \code{\link{sealevel-class}},
  \code{\link{section-class}}, \code{\link{topo-class}},
  \code{\link{windrose-class}}
}
\author{
Dan Kelley
}
