% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geneSelect.R
\name{SPCAselect}
\alias{SPCAselect}
\title{SPCA gene selection}
\usage{
SPCAselect(expr, type = "log", sumabs = 0.05, nPC = 3)
}
\arguments{
\item{expr}{a cell-by-gene expression matrix, either the raw counts or log-transformed expressions.}

\item{type}{"log" if \code{expr} has been normalized and log-transformed (default), 
or "count" if \code{expr} contains the raw counts. 
SPCA works best on sub-Gaussian data, so log-transformation is highly recommended.}

\item{sumabs}{a measurement of sparsity for SPCA, between \code{1/sqrt(n.gene)} and 1.
Smaller values result in sparser results, hence fewer selected genes.}

\item{nPC}{the number of sparse singular vectors to look into.}
}
\value{
A list containing \describe{
  \item{select.genes}{the names of selected genes, ordered by decreasing importance.}
  \item{vectors}{a gene-by-nPC matrix of the sparse eigen vectors.}
}
}
\description{
Select highly variable genes for clustering using Sparse Principal Component Analysis (SPCA).
}
\references{
Witten, DM and Tibshirani, R and T Hastie (2009) 
A penalized matrix decomposition, with applications to 
sparse principal components and canonical correlation analysis.
\emph{Biostatistics}.
}
