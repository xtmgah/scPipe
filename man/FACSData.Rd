% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/SCData_methods.R
\docType{methods}
\name{FACSData}
\alias{FACSData}
\alias{FACSData<-}
\alias{FACSData}
\alias{FACSData.SCData}
\alias{FACSData,SCData-method}
\alias{FACSData}
\alias{FACSData<-,SCData-method}
\alias{FACSData}
\title{Get or set FACs data for an SCData object}
\usage{
FACSData(object)

FACSData(object) <- value

FACSData.SCData(object)

\S4method{FACSData}{SCData}(object)

\S4method{FACSData}{SCData}(object) <- value
}
\arguments{
\item{object}{An \code{\link{SCData}} object.}

\item{value}{Value to be assigned to corresponding object.}
}
\value{
A \code{AnnotatedDataFrame} of FACS data.
}
\description{
Get or set FACs data for an SCData object
}
\examples{
data("sc_sample_data")
data("sc_sample_qc")
QualityControlInfo = new("AnnotatedDataFrame", data = as.data.frame(sc_sample_qc))
scd = newSCData(countData = as.matrix(sc_sample_data),
               QualityControlInfo = QualityControlInfo,
               useForExprs = "counts",
               organism = "mmusculus_gene_ensembl",
               gene_id_type = "external_gene_name")
FACSData(scd)

}
\author{
Luyi Tian
}
