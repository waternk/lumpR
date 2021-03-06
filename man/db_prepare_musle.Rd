% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/db_prepare_musle.R
\name{db_prepare_musle}
\alias{db_prepare_musle}
\title{Prepare various input related to use of (M)USLE module (erosion)}
\usage{
db_prepare_musle(dbname, compute_K = FALSE,
  copy_from_other_tables = NULL, setP = NULL, verbose = TRUE)
}
\arguments{
\item{dbname}{Name of the data source (DSN) registered at ODBC. See \code{Details} of
\code{\link[lumpR]{db_create}}.}

\item{compute_K}{Compute (M)USLE K-factor (soil erodibility) from properties of topmost soil horizon, write it to table "soil" (use \code{copy_from_other_tables} to transfer it to table "soil_veg_components"). \code{c(TRUE, FALSE)}}

\item{copy_from_other_tables}{Copy values to table "soil_veg_components": MUSLE-C and Manning-n from table "vegetation", MUSLE-K from "soils". Array of strings with possible values \code{c("MUSLE-C", "Manning-n" ,"MUSLE-K")} of
\code{\link[lumpR]{db_create}}.}

\item{setP}{Set entire column of (M)USLE P-factor (protection measures) to a single value (usually 1). Default NULL (do not set).}

\item{verbose}{\code{logical}. Should detailed information during execution be
printed? Default: \code{TRUE}.}
}
\description{
Function to write parameter values relevant for modelling application with the
WASA hydrological model into an existing database, preferably created with
\code{\link[lumpR]{db_create}}.
}
\details{
after Williams (1995). [explanation to be elaborated]
}
\references{
\bold{lumpR paper}\cr
     Pilz, T.; Francke, T.; Bronstert, A. (2017): lumpR 2.0.0: an R package facilitating
     landscape discretisation for hillslope-based hydrological models.
     \emph{Geosci. Model Dev.}, 10, 3001-3023, doi: 10.5194/gmd-10-3001-2017
}
\author{
Till Francke \email{francke@uni-potsdam.de}
}
