% Please edit documentation in R/MissingDataGUI.r
\name{MissingDataGUI}
\alias{MissingDataGUI}
\title{The Starting of Missing Data GUI.}
\usage{
MissingDataGUI(data = NULL, width = 1000, height = 750)
}
\arguments{
\item{data}{A data frame which is shown in the main missing-data
GUI. If it is null, then the open-files GUI opens.}

\item{width}{the width of window. Default to be 1000, and the
minimal is 800.}

\item{height}{the height of window. Default to be 750, and the
minimal is 600.}
}
\description{
This function starts an open-files GUI, allowing 1) selecting one
or more data files; 2)opening the main missing-data GUI for one
data file. The missing data GUI consists of two tabs. In the
summary tab, there are a list of all variables, a list of
variables having missing values to color by, two radios for
imputation methods and graph types respectively, a checkbox group
for the conditional variables, four buttons and a graphics
device. In the help tab, the layout is the same as the summary
tab.  But when the users move their mouse on those widgets, or
click any of those radios or buttons, the functions of all widgets
will be described at the place of the graphics device. The
attributes of the variables can be changed. If the user double
clicks on any variables in the top left table of missing-data GUI,
an attribute window will pop up. Then the name could be edited,
and the class could be changed to one of the four classes:
integer, numeric, factor, and character. When a numeric variable
is changed to a categorical variable, the condtions in the bottom
left checkbox group will be updated. If the list of the color by
variables is very long, the selector allows text entry to find the
variable when this widget is active.
}
\details{
If more than one files are listed in the window but no file is
focused when clicking the "Watch Missing Values", then the first
file is selected for the main missing-data GUI. If more than one
files are focused, then the first file of the focused files is
selected for the main GUI.
}
\examples{
if (interactive()) {
    MissingDataGUI()
    
    data(tao)
    MissingDataGUI(tao)
    
    data(brfss)
    MissingDataGUI(brfss)
}

}
\author{
Xiaoyue Cheng <\email{xycheng@unomaha.edu}>
}
