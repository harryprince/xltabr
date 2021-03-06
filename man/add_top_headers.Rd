% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/top_headers.R
\name{add_top_headers}
\alias{add_top_headers}
\title{Add top headers to the tab.  The top headers are provided as a character vector.
If you need more than one row, provide a list of character vectors.
Top headers are automatically assigned the style_text 'top_header_1', but
you may provide style overrides using column_style_names and row_style_names}
\usage{
add_top_headers(tab, top_headers, col_style_names = "",
  row_style_names = "body|top_header_1")
}
\arguments{
\item{tab}{The core tab object}

\item{top_headers}{For a single top_header row, a character vector.  For multiple top_header rows, a list of character vectors.}

\item{col_style_names}{A character vector, with and element for each column of the top header.  Each element is a style name. Col styles in inherit from row_styles.}

\item{row_style_names}{A character vector, with an element for each row of the top header.  Each element is a style_name (i.e. a key in the style catalogue)}
}
\description{
Add top headers to the tab.  The top headers are provided as a character vector.
If you need more than one row, provide a list of character vectors.
Top headers are automatically assigned the style_text 'top_header_1', but
you may provide style overrides using column_style_names and row_style_names
}
\examples{
crosstab <- read.csv(system.file("extdata", "example_crosstab.csv", package="xltabr"))
tab <- initialise()

top_headers_row_1 <- c("", "", "Car type", "Car type", "Car type")
top_headers_row_2 <- c("Drive", "Age", "Sedan", "Sport", "Supermini")
top_headers <- list(top_headers_row_1, top_headers_row_2)

tab <- add_top_headers(tab, top_headers)
}
