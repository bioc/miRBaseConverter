% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miRBaseConvert.R
\name{miRNAVersionConvert}
\alias{miRNAVersionConvert}
\title{miRBase version convert for miRNA Names}
\usage{
miRNAVersionConvert(
  miRNANames,
  targetVersion = "v22",
  exact = TRUE,
  verbose = TRUE
)
}
\arguments{
\item{miRNANames}{A character vector representing the source miRNA names needed to be convert.}

\item{targetVersion}{A character value representing the target miRBase version corresponding the source miRNA names.
Users can apply the function \strong{getAllVersionInfo()} to get the available miRNA version names.
The optional values are in below:\cr
"v6","v7_1","v8","v8_1","v8_2","v9","v9_1","v9_2","v10","v10_1","v11","v12","v13","v14",\cr
"v15","v16","v17","v18","v19","v20","v21","v22"\cr}

\item{exact}{Logical value. If true, the result will be the most exactly matched result.
If FALSE, the result will include all the possible matched miRNA name. If one miRNA can match multiple names. All the matched names are
 concatenated with "&".}

\item{verbose}{Logical value. If true, it will print the multiple matched miRNA Names and Accessions to the console.}
}
\value{
A data frame with three columns. The number of rows equal to the input miRNA names. The three columns are defined as below:
\itemize{
 \item  \strong{OriginalName} : The original miRNA names (Column 1).\cr
 \item \strong{TargetName} : The converted miRBase names (in specified version) corresponding to the original miRNA names (Column 2).\cr
 \item \strong{Accession} : The corresponding miRBase Accessions (Column 3).
}
}
\description{
This function converts a group of any species' miRNA names (including precursor and mature miRNA) to the specified miRBase version if the miRNAs have been defined in miRBase.
}
\note{
Please note: Due to some miRNA names changing many times in history. Even if choose the third parameter "exact"=TRUE, it may still have some miRNAs that can't
match the unique name in the target version. In order to return the accurate result as possible, we also concatenate the multiple matched miRNA names with "&". This is the rare case but it happens sometimes.
}
\examples{
data(miRNATest)
miRNANames=miRNATest$miRNA_Name
result1=miRNAVersionConvert(miRNANames,targetVersion="v13",exact=TRUE,verbose=TRUE)
result2=miRNAVersionConvert(miRNANames,targetVersion="v22",exact=TRUE,verbose=TRUE)
result3=miRNAVersionConvert(miRNANames,targetVersion="v22",exact=FALSE,verbose=TRUE)

miRNANames=c( "hsa-let-7c","hsa-miR-3190-3p","hsa-let-7c","hsa-miR-34b","hsa-miR-378",
"hsa-miR-499a-3p","hsa-miR-499a-5p","hsa-miR-500","hsa-miR-516a-5p","hsa-miR-550","hsa-miR-589")
result4=miRNAVersionConvert(miRNANames, targetVersion="v22", exact=TRUE, verbose=TRUE)
}
\author{
Xu, Taosheng \email{taosheng.x@gmail.com}
}
