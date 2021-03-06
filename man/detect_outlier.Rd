% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qc.R
\name{detect_outlier}
\alias{detect_outlier}
\title{Detect outliers based on QC metrics}
\usage{
detect_outlier(scd, comp = 1, sel_col = NULL, type = c("both", "low",
  "high"), conf = c(0.9, 0.99))
}
\arguments{
\item{scd}{an SCData object containing expression values and
QC metrics.}

\item{comp}{the number of component used in GMM. can be one or two.}

\item{sel_col}{a vector of column names, indicate the columns to use for QC.
by default it will be the statistics generated by `calQCMetrics()`}

\item{type}{only looking at low quality cells (`low`) or possible doublets (`high`)
or both (`both`)}

\item{conf}{confidence interval for linear regression at lower and upper tails.
Usually this is smaller for lower tail because we hope to pick out more
low quality cells than doublets.}
}
\value{
an updated SCData object with an outlier column in \code{QualityControlInfo}
}
\description{
Detect outliers based on QC metrics
}
\details{
detect outlier using Mahalanobis distances TODO
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
scd = calQCMetrics(scd)
scd = detect_outlier(scd)

}
