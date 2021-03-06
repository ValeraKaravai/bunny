% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect.R
\name{CreativeAdminConnection}
\alias{CreativeAdminConnection}
\title{Connecting to the database MySql (Creative database)}
\usage{
CreativeAdminConnection()
}
\value{
None
}
\description{
Creates connection to the database (Creative database)). To connect the function uses Renviron 
(read more \code{\link{ReadRemoteEnvironment}})
}
\examples{
creative <- CreativeAdminConnection()
query <- 'SELECT * FROM table LIMIT 1'
campaigns <- dbGetQuery(creative, query)
dbDisconnect(creative)

}
\seealso{
\code{\link{ReadRemoteEnvironment}}
}
