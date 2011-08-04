\name{singleimputation}
\alias{singleimputation}
\title{Impute the Data Without Consideration of Conditions.}
\usage{
  singleimputation(dat, method, vartype, cond)
}
\arguments{
  \item{dat}{A data frame whose missing values need to be
  imputed. The last column should be the row number passed
  by \code{\link{imputation}}.}

  \item{method}{The imputation method selected from the
  missing data GUI. Must be one of 'Below
  10%','Median','Mean','Random value','Regression','Nearest
  neighbor','Multiple Imputation','Mode'.}

  \item{vartype}{A vector of the classes of dat. The length
  is the same as the number of columns of dat. The value
  should be from "integer", "numeric", "factor", and
  "character".}

  \item{cond}{A vector of categorical variables. There are
  no missing values in those variables.}
}
\value{
  The imputed data frame with a column of row numbers
  matching with the last column of dat, to pass back to
  \code{\link{imputation}}.
}
\description{
  This function is to impute missing data by one of the
  eight methods without the condition. When the condtions
  are imported, they are then romoved from the data frame,
  and then the imputation will be applied without
  conditions. Details of the eight methods can be found in
  \code{\link{imputation}}.
}
\details{
  See \code{\link{imputation}}.
}
\author{
  Xiaoyue Cheng <\email{xycheng@iastate.edu}>
}

