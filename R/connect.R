#' Connecting to the database Vertica (Full stats)
#'
#' Creates connection to the database (full stats). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' vertica <- VerticaFullStatsConnection()
#' query <- 'SELECT * FROM public.table LIMIT 1'
#' campaigns <- dbGetQuery(vertica, query)
#' dbDisconnect(vertica)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
#' @importFrom dplyr DBI

VerticaFullStatsConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.user'), 
                       password = Sys.getenv('vertica.password'),
                       host = Sys.getenv('vertica.full.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

#' Connecting to the database Vertica (Realtime stats)
#'
#' Creates connection to the database (Realtime stats). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' vertica <- VerticaRealStatsConnection()
#' query <- 'SELECT * FROM public.table LIMIT 1'
#' campaigns <- dbGetQuery(vertica, query)
#' dbDisconnect(vertica)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 

VerticaRealStatsConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.user'), 
                       password = Sys.getenv('vertica.password'),
                       host = Sys.getenv('vertica.real.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

#' Connecting to the database Vertica (ETL-RNA)
#'
#' Creates connection to the database (ETL-RNA). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' vertica <- VerticaRnaConnection()
#' query <- 'SELECT * FROM public.table LIMIT 1'
#' campaigns <- dbGetQuery(vertica, query)
#' dbDisconnect(vertica)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 

VerticaRnaConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.rna.user'), 
                       password = Sys.getenv('vertica.rna.password'),
                       host = Sys.getenv('vertica.rna.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

#' Connecting to the database MySql (GaleraReaOnly)
#'
#' Creates connection to the database (GaleraReaOnly). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' galera <- GaleraReadConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(galera, query)
#' dbDisconnect(galera)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
GaleraReadConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.user'), 
                     password = Sys.getenv('galera.password'),
                     host = Sys.getenv('galera.read.host') , 
                     port = as.numeric(Sys.getenv('galera.read.port')),
                     dbname = Sys.getenv('galera.dbname'))
}

#' Connecting to the database MySql (GaleraReaOnly with an increased limit) 
#'
#' Creates connection to the database (GaleraReaOnly). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' galera <- GaleraReadNoLimitConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(galera, query)
#' dbDisconnect(galera)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
GaleraReadNoLimitConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.user'), 
                     password = Sys.getenv('galera.password'),
                     host = Sys.getenv('galera.read.host') , 
                     port = as.numeric(Sys.getenv('galera.read.nolimit.host')),
                     dbname = Sys.getenv('galera.dbname'))
}

#' Connecting to the database MySql (GaleraWrite - configuration regression) 
#'
#' Creates connection to the database (GaleraWrite - configuration regression). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' galera <- GaleraWriteConfigConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(galera, query)
#' dbDisconnect(galera)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
GaleraWriteConfigConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.config.user'), 
                     password = Sys.getenv('galera.config.password'),
                     host = Sys.getenv('galera.write.host') , 
                     port = as.numeric(Sys.getenv('galera.write.port')),
                     dbname = Sys.getenv('galera.dbname'))
}


#' Connecting to the database MySql (GaleraWrite - experement regression) 
#'
#' Creates connection to the database (GaleraWrite - experement regression). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' galera <- GaleraWriteExperementConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(galera, query)
#' dbDisconnect(galera)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
GaleraWriteExperementConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.experement.user'), 
                     password = Sys.getenv('galera.experement.password'),
                     host = Sys.getenv('galera.write.host') , 
                     port = as.numeric(Sys.getenv('galera.write.port')),
                     dbname = Sys.getenv('galera.dbname'))
}


#' Connecting to the database Postgres (Adp database) 
#'
#' Creates connection to the database (Adp database). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' adp <- PostrgresAdpReadConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(adp, query)
#' dbDisconnect(adp)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
PostrgresAdpReadConnection <- function() {
  postgres <- dbConnect(RPostgreSQL::PostgreSQL(), 
                        user = Sys.getenv('postgres.user'), 
                        password = Sys.getenv('postgres.password'),
                        host = Sys.getenv('postgres.host') , 
                        port = as.numeric(Sys.getenv('postgres.port')),
                        dbname = Sys.getenv('postgres.dbname'))
}

#' Connecting to the database Postgres (Adp Audit) 
#'
#' Creates connection to the database (Adp Audit). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' adp <- PostrgresAuditReadConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(adp, query)
#' dbDisconnect(adp)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
PostrgresAuditReadConnection <- function() {
  postgres <- dbConnect(RPostgreSQL::PostgreSQL(), 
                        user = Sys.getenv('postgres.user'), 
                        password = Sys.getenv('postgres.password'),
                        host = Sys.getenv('postgres.host') , 
                        port = as.numeric(Sys.getenv('postgres.port')),
                        dbname = Sys.getenv('postgres.audit.dbname'))
}

#' Connecting to the database MySql (Creative database) 
#'
#' Creates connection to the database (Creative database)). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' creative <- CreativeAdminConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(creative, query)
#' dbDisconnect(creative)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
CreativeAdminConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('creative.user'), 
                     password = Sys.getenv('creative.password'),
                     host = Sys.getenv('creative.admin.host') , 
                     port = as.numeric(Sys.getenv('creative.port')))
}

#' Connecting to the database MySql (Creative database stats) 
#'
#' Creates connection to the database (Creative database stats)). To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' creative <- CreativeStatConnection()
#' query <- 'SELECT * FROM table LIMIT 1'
#' campaigns <- dbGetQuery(creative, query)
#' dbDisconnect(creative)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
CreativeStatConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('creative.user'), 
                     password = Sys.getenv('creative.password'),
                     host = Sys.getenv('creative.stat.host') , 
                     port = as.numeric(Sys.getenv('creative.port')))
}

#' Authentication in influx
#'
#' To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' influx <- InfluxAuthenticateParams()
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
InfluxAuthenticateParams <- function() {
  list(
    login = Sys.getenv("influx.login"), 
    password = Sys.getenv("influx.password"),
    hostname = Sys.getenv("influx.host"),
    port = Sys.getenv("influx.port"),
    db = Sys.getenv("influx.db")
  )
}

#' Authentication in monitor
#'
#' To connect the function uses Renviron 
#' (read more \code{\link{ReadRemoteEnvironment}})
#'
#' @return None
#'
#' @examples
#' monitor <- kMonitorConnectionParams()
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 
kMonitorConnectionParams <- function() { 
  list (
    login = Sys.getenv('login.monitor'),
    pass = Sys.getenv('pass.monitor'),
    db = Sys.getenv('db.monitor'),
    rp = Sys.getenv('rp.monitor'),
    host = Sys.getenv('host.monitor')
  ) 
}

#' Read Renviron
#' This function downloads the Renviron file to the home directory.
#' @param user user name on server r2d2
#' @return None (~/ downliad file '.Renviron')
#'
#' @examples
#' ReadRemoteEnvironment('i.ivanov')
#'
#' @export 
ReadRemoteEnvironment <- function(user) {
  server <- 'scp %s@r2d2.rtty.in:shared/.Renviron ~'
  system(sprintf(server, user))
  readRenviron('~/.Renviron')
}