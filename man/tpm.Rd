% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/SCData_methods.R
\docType{methods}
\name{tpm}
\alias{tpm}
\alias{tpm<-}
\alias{tpm}
\alias{tpm.SCData}
\alias{tpm}
\alias{tpm,SCData-method}
\alias{tpm<-,SCData,matrix-method}
\alias{tpm,SCData-method}
\alias{tpm<-,SCData,matrix-method}
\title{Accessors for the 'tpm' (transcripts per million) element of an SCData object.}
\usage{
tpm(object)

tpm(object) <- value

tpm.SCData(object)

\S4method{tpm}{SCData}(object)

\S4method{tpm}{SCData,matrix}(object) <- value
}
\arguments{
\item{object}{a \code{SCData} object.}

\item{value}{a matrix of class \code{"numeric"}}
}
\value{
a matrix of transcripts-per-million data
}
\description{
The \code{tpm} element of the arrayData slot in an SCData object holds
a matrix containing transcripts-per-million values. It has the same dimensions
as the 'exprs' and 'counts' elements, which hold the transformed expression
data and count data, respectively.
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
tpm(scd)

}
\author{
Luyi Tian
}
