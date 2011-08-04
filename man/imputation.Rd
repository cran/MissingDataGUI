\name{imputation}
\alias{imputation}
\title{Impute the missing data with the method selected under the
condition.}
\usage{
  imputation(origdata, method, vartype, missingpct,
  condition = NULL)
}
\arguments{
  \item{origdata}{A data frame whose missing values need to
  be imputed. This data frame should be selected from the
  missing data GUI.}

  \item{method}{The imputation method selected from the
  missing data GUI. Must be one of 'Below
  10%','Median','Mean','Random value','Regression','Nearest
  neighbor','Multiple Imputation','Mode'.}

  \item{vartype}{A vector of the classes of origdata. The
  length is the same as the number of columns of origdata.
  The value should be from "integer", "numeric", "factor",
  and "character".}

  \item{missingpct}{A vector of the percentage of missings
  of the variables in origdata. The length is the same as
  the number of columns of origdata. The value should be
  between 0 and 1.}

  \item{condition}{A vector of categorical variables. The
  dataset will be partitioned based on those variables, and
  then the imputation is implemented in each group. There
  are no missing values in those variables. If it is null,
  then there is no division. The imputation is based on the
  whole dataset.}
}
\value{
  The imputed data frame with the last column being the row
  number from the original dataset. During the procedure of
  the function, rows may be exchanged, thus a column of row
  number could keep track of the original row number and
  then help to find the shadow matrix.
}
\description{
  This function provides eight methods for imputation with
  categorical varaibles as conditions.
}
\details{
  The imputation methods: (1)'Below 10%' means NA's of one
  variable will be replaced by the value which equals to
  the minimum of the variable minus 10% of the range.
  (2)'Median' means NA's will be replaced by the median of
  this variable (omit NA's). (3)'Mean' means NA's will be
  replaced by the mean of this variable (omit NA's).
  (4)'Random value' means NA's will be replaced by any
  values of this variable (omit NA's) which are randomly
  selected. (5)'Regression' uses function
  \code{\link[Hmisc]{aregImpute}} from package \pkg{Hmisc}.
  It requires at least two variables to be selected.
  (6)'Nearest neighbor' replaces NA's by its nearest
  neighbor. It requires at least two variables to be
  selected, and no character variables. It returns median
  for the case if all values in it are NA's. (7)'Multiple
  Imputation' uses functions from package \pkg{norm}. It
  requires all selected variables to be numeric (at least
  integer), and at least two variables to be selected.
  (8)'Mode' is a method for imputing categorical variables.
  It requires all selected variables to be character or
  factor or logical. It will replace NA's by the mode of
  the variable (omit NA's).
}
\author{
  Xiaoyue Cheng <\email{xycheng@iastate.edu}>
}

