% Please edit documentation in R/imputation.r
\name{imputation}
\alias{imputation}
\title{Impute the missing data with the method selected under the
condition.}
\usage{
imputation(origdata, method, vartype = NULL, missingpct = NULL, condition = NULL, 
    knn = 5, mi.n = 3, mi.seed = 1234567, row_var = NULL)
}
\arguments{
\item{origdata}{A data frame whose missing values need to be
imputed. This data frame should be selected from the missing
data GUI.}

\item{method}{The imputation method selected from the missing
data GUI. Must be one of 'Below 10%','Simple','Neighbor',
'MI:areg','MI:norm','MI:mice','MI:mi'. If method='MI:mice',
then the methods of the variables containing NA's must be attached
with argument method. If not, then default methods are used.}

\item{vartype}{A vector of the classes of origdata. The length is
the same as the number of columns of origdata. The value should be
from "integer", "numeric", "logical", "character", "factor", and "ordered".}

\item{missingpct}{A vector of the percentage of missings of the
variables in origdata. The length is the same as the number of
columns of origdata. The values should be between 0 and 1.}

\item{condition}{A vector of categorical variables. The dataset
will be partitioned based on those variables, and then the
imputation is implemented in each group. There are no missing
values in those variables. If it is null, then there is no
division. The imputation is based on the whole dataset.}

\item{knn}{number of the neighbors.}

\item{mi.n}{number of the imputation sets for multiple imputation}

\item{mi.seed}{random number seed for multiple imputation}

\item{row_var}{A column name (character) that defines the ID of rows.}
}
\value{
The imputed data frame with the last column being the row
number from the original dataset. During the procedure of the
function, rows may be exchanged, thus a column of row number could
keep track of the original row number and then help to find the
shadow matrix.
}
\description{
This function provides eight methods for imputation with
categorical varaibles as conditions.
}
\details{
The imputation methods: This list displays all the imputation
methods. Users can make one selection. (1) 'Below 10%' means
NA's of one variable will be replaced by the value which
equals to the minimum of the variable minus 10% of the range.
For categorical variables, NA's are treated as a new category.
Under this status the selected conditioning variables are
ignored. If the data are already imputed, then this item
will show the imputed result. (2) 'Simple' will create three
tabs: Median, Mean, and Random Value. 'Median' means NA's will be
replaced by the median of this variable (omit NA's).
'Mean' means NA's will be replaced by the mean of the
variable (omit NA's). The median does not apply to the nominal
variable, neither does the mean to the categorical variable.
In these cases the mode (omit NA's) is provided.
'Random Value' means NA's will be replaced by any values
of this variable (omit NA's) which are randomly selected.
(3) 'Neighbor' contains two methods: 'Average Neighbor' and
'Random Neighbor'. 'Average Neighbor' will replace the
NA's by the mean of the nearest neighbors. 'Random Neighbor'
substitutes the missing for a random sample of the k nearest
neighbors. The number of neighbors is default to 5, and
can be changed by argument knn. The Neighbor methods
require at lease one case to be complete, at least two
variables to be selected, and no factor/character variables.
The ordered factors are treated as integers. The method will
return the overall mean or a global random sample value
if the observation only contains NA's.
(4) 'MI:areg' uses function \code{\link[Hmisc]{aregImpute}}
from package \pkg{Hmisc}. It requires at lease one case to
be complete, and at least two variables to be selected.
(5) 'MI:norm' uses function \code{\link[norm]{imp.norm}}
from package \pkg{norm}. It requires all selected variables
to be numeric(at least integer), and at least two variables
to be selected. Sometimes it cannot converge, then the
programme will leave NA's without imputation.
(6) 'MI:mice' uses the \pkg{mice} package. The methods of
the variables containing NA's must be attached with argument
method. If not, then default methods are used.
(7) 'MI:mi' employes the \pkg{mi} package.
}
\author{
Xiaoyue Cheng <\email{xycheng@unomaha.edu}>
}
