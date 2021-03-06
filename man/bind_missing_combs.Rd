% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asymmetrise.R
\name{bind_missing_combs}
\alias{bind_missing_combs}
\title{Add the missing combinations of x and y}
\usage{
bind_missing_combs(.data, .x, .y)
}
\arguments{
\item{.data}{input data table}

\item{.x, .y}{names of the columns for which to add missing comparisons}
}
\value{
a data table with the new rows
}
\description{
Adds rows to the input data table to include any combinations
    of \code{.x} and \code{.y} that are not already present. All other
    columns (if any) are set to \code{NA}
}
\examples{
df <- data.frame(a = c("A", "B"),
                 b = c("C", "A"),
                 untouched = c(1, 2),
                 stringsAsFactors = FALSE)
df

bind_missing_combs(df, a, b)

}
