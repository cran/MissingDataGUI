\name{WatchMissingValues}
\alias{WatchMissingValues}
\title{The Main Window of Missing Data GUI.}
\usage{
WatchMissingValues(h, data = NULL, gt = NULL, size.width = 1000, size.height = 750, 
    ...)
}
\arguments{
  \item{h}{A list with components obj referring to the
  button "Watch Missing Values" in
  \code{\link{MissingDataGUI}}.}

  \item{data}{A data frame which is shown in the
  missing-data GUI. If it is null, then parameter gt must
  not be null.}

  \item{gt}{A widget created by gtable(). It should be
  passed from \code{\link{MissingDataGUI}}.}

  \item{size.width}{the width of window. Default to be
  1000, and the minimal is 800.}

  \item{size.height}{the height of window. Default to be
  750, and the minimal is 600.}

  \item{...}{Other parameters to be passed to this
  function.}
}
\value{
  NULL
}
\description{
  This function is to open the missing data GUI. The
  widgets shown in the GUI include: a table of all
  variables in the dataset, a checkbox group of categorical
  variables to condition on, a table of variables which
  have missing values to coloy by, a radio of imputation
  methods, a radio of graph types, three command buttons,
  and a graphics device. In this GUI the user can: 1)change
  the name and class of the selected variable; 2)look at
  the numeric summary for the missing values in the
  selected variables; 3)look at the plot of imputed data,
  under one of the imputation methods and one of the graph
  types and one color-by variable, with or without the
  conditions; 4)export the imputed data as well as the
  missing shadow matrix, and save them to a data file(csv).
}
\details{
  The missing data GUI consists of two tabs. In the summary
  tab, there are a list of all variables, a list of
  variables having missing values to color by, two radios
  for imputation methods and graph types respectively, a
  checkbox group for the conditional variables, four
  buttons and a graphics device. In the help tab, the
  layout is the same as the summary tab.  But when the
  users move their mouse on those widgets, or click any of
  those radios or buttons, the functions of all widgets
  will be described at the place of the graphics device.
  The attributes of the variables can be changed. If the
  user double clicks on any variables in the top left table
  of missing-data GUI, an attribute window will pop up.
  Then the name could be edited, and the class could be
  changed to one of the four classes: integer, numeric,
  factor, and character. When a numeric variable is changed
  to a categorical variable, the condtions in the bottom
  left checkbox group will be updated. If the list of the
  color by variables is very long, the selector allows text
  entry to find the variable when this widget is active.
}
\examples{
if (interactive()) {
    data(tao)
    WatchMissingValues(data = tao)
    data(brfss)
    WatchMissingValues(data = brfss)
}
}
\author{
  Xiaoyue Cheng <\email{xycheng@iastate.edu}>
}
