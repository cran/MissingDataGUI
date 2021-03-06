% Please edit documentation in R/utils.r
\name{compute_missing_pct}
\alias{compute_missing_pct}
\title{Compute the numeric summary of the missingness}
\usage{
compute_missing_pct(dat)
}
\arguments{
\item{dat}{A data frame.}
}
\value{
A list including (1) a data frame 'missingsummary' that provides
a table of missingness; (2) the total missing percentage; (3) the percent
of variables that contain missing values; (4) the ratio of observations
that have missings.
}
\description{
Compute the numeric summary of the missingness
}
\examples{
data(tao)
compute_missing_pct(tao)

}
\author{
Xiaoyue Cheng <\email{xycheng@unomaha.edu}>
}
