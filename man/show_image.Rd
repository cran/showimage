% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\name{show_image}
\alias{show_image}
\title{Show an Image on an R Graphics Device}
\usage{
show_image(file, mar = c(0, 0, 0, 0), axes = FALSE, frame.plot = TRUE,
  asp = NULL, ...)
}
\arguments{
\item{file}{Name of the image file to show.}

\item{mar}{Margin, the \code{mar} parameter, see \code{par}.}

\item{axes}{Whether to show the axes. You need to increase the
margin to see the axis labels.}

\item{frame.plot}{Whether to draw a frame around the plot.}

\item{asp}{Aspect ratio parameter for \code{plot}. If \code{NULL},
then the original aspect ratio of the image is used.}

\item{...}{Additonal arguments are passed to \code{plot}.}
}
\value{
Nothing.
}
\description{
Show an Image on an R Graphics Device
}
\examples{
rlogo <- system.file("img", "Rlogo.png", package="png")
show_image(rlogo)

## Create a plot in a PNG and show it
png(tmp <- tempfile(fileext = ".png"))
pairs(iris)
dev.off()
show_image(tmp)
}

