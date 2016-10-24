

#' @name DimRd_expr
#' @export
#' @docType methods
#' @rdname DimRd_expr
setGeneric("DimRd_expr", function(object) {
  standardGeneric("DimRd_expr")
})

#' @name DimRd_expr<-
#' @export
#' @docType methods
#' @rdname DimRd_expr
setGeneric("DimRd_expr<-", function(object, value) {
  standardGeneric("DimRd_expr<-")
})


#' @name QC_metrics
#' @export
#' @docType methods
#' @rdname QC_metrics
setGeneric("QC_metrics", function(object) {
  standardGeneric("QC_metrics")
})

#' @name QC_metrics<-
#' @export
#' @docType methods
#' @rdname QC_metrics
setGeneric("QC_metrics<-", function(object, value) {
  standardGeneric("QC_metrics<-")
})



#' @name tpm
#' @export
#' @docType methods
#' @return a matrix of transcripts-per-million data
#' @rdname tpm
setGeneric("tpm", function(object) {standardGeneric("tpm")})

#' @name tpm<-
#' @export
#' @docType methods
#' @rdname tpm
setGeneric("tpm<-", function(object, value) {standardGeneric("tpm<-")})

#' @name cpm
#' @export
#' @docType methods
#' @return a matrix of counts-per-million values
#' @rdname cpm
setGeneric("cpm", function(object) {standardGeneric("cpm")})

#' @name cpm<-
#' @export
#' @docType methods
#' @rdname cpm
setGeneric("cpm<-", function(object, value) {standardGeneric("cpm<-")})

#' @name fpkm
#' @export
#' @docType methods
#' @return a matrix of FPKM values
#' @rdname fpkm
setGeneric("fpkm", function(object) {standardGeneric("fpkm")})

#' @name fpkm<-
#' @export
#' @docType methods
#' @rdname fpkm
setGeneric("fpkm<-", function(object, value) {standardGeneric("fpkm<-")})
