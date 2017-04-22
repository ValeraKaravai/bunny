#' Connecting to the database Vertic (Full stats)
#'
#' Creates connection to the database (full stats)
#'
#' @return None
#'
#' @examples
#' vertica <- VerticaRnaConnection()
#' query <- 'SELECT * FROM public.ox_campaigns LIMIT 1'
#' campaigns <- dbGetQuery(vertica, query)
#' dbDisconnect(vertica)
#'
#' @seealso \code{\link{ReadRemoteEnvironment}}
#' @export 

VerticaFullStatsConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.user'), 
                       password = Sys.getenv('vertica.password'),
                       host = Sys.getenv('vertica.full.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

VerticaRealStatsConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.user'), 
                       password = Sys.getenv('vertica.password'),
                       host = Sys.getenv('vertica.real.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

VerticaRnaConnection <- function() {
  vertica <- dbConnect(RPostgreSQL::PostgreSQL(), 
                       user = Sys.getenv('vertica.rna.user'), 
                       password = Sys.getenv('vertica.rna.password'),
                       host = Sys.getenv('vertica.rna.host'), 
                       port = as.numeric(Sys.getenv('vertica.port')),
                       dbname = Sys.getenv('vertica.dbname'))
}

GaleraReadConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.user'), 
                     password = Sys.getenv('galera.password'),
                     host = Sys.getenv('galera.read.host') , 
                     port = as.numeric(Sys.getenv('galera.read.port')),
                     dbname = Sys.getenv('galera.dbname'))
}

GaleraReadNoLimitConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.user'), 
                     password = Sys.getenv('galera.password'),
                     host = Sys.getenv('galera.read.host') , 
                     port = as.numeric(Sys.getenv('galera.read.nolimit.host')),
                     dbname = Sys.getenv('galera.dbname'))
}

GaleraWriteConfigConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.config.user'), 
                     password = Sys.getenv('galera.config.password'),
                     host = Sys.getenv('galera.write.host') , 
                     port = as.numeric(Sys.getenv('galera.write.port')),
                     dbname = Sys.getenv('galera.dbname'))
}

GaleraWriteExperementConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('galera.experement.user'), 
                     password = Sys.getenv('galera.experement.password'),
                     host = Sys.getenv('galera.write.host') , 
                     port = as.numeric(Sys.getenv('galera.write.port')),
                     dbname = Sys.getenv('galera.dbname'))
}


PostrgresAdpReadConnection <- function() {
  postgres <- dbConnect(RPostgreSQL::PostgreSQL(), 
                        user = Sys.getenv('postgres.user'), 
                        password = Sys.getenv('postgres.password'),
                        host = Sys.getenv('postgres.host') , 
                        port = as.numeric(Sys.getenv('postgres.port')),
                        dbname = Sys.getenv('postgres.dbname'))
}

PostrgresAuditReadConnection <- function() {
  postgres <- dbConnect(RPostgreSQL::PostgreSQL(), 
                        user = Sys.getenv('postgres.user'), 
                        password = Sys.getenv('postgres.password'),
                        host = Sys.getenv('postgres.host') , 
                        port = as.numeric(Sys.getenv('postgres.port')),
                        dbname = Sys.getenv('postgres.audit.dbname'))
}

CreativeAdminConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('creative.user'), 
                     password = Sys.getenv('creative.password'),
                     host = Sys.getenv('creative.admin.host') , 
                     port = as.numeric(Sys.getenv('creative.port')))
}

CreativeStatConnection <- function() {
  mysql <- dbConnect(RMySQL::MySQL(), 
                     user = Sys.getenv('creative.user'), 
                     password = Sys.getenv('creative.password'),
                     host = Sys.getenv('creative.stat.host') , 
                     port = as.numeric(Sys.getenv('creative.port')))
}

InfluxAuthenticateParams <- function() {
  list(
    login = Sys.getenv("influx.login"), 
    password = Sys.getenv("influx.password"),
    hostname = Sys.getenv("influx.host"),
    port = Sys.getenv("influx.port"),
    db = Sys.getenv("influx.db")
  )
}

kMonitorConnectionParams <- function() { 
  list (
    login = Sys.getenv('login.monitor'),
    pass = Sys.getenv('pass.monitor'),
    db = Sys.getenv('db.monitor'),
    rp = Sys.getenv('rp.monitor'),
    host = Sys.getenv('host.monitor')
  ) 
}

ReadRemoteEnvironment <- function(user) {
  server <- 'scp %s@r2d2.rtty.in:shared/.Renviron ~'
  system(sprintf(server, user))
  readRenviron('~/.Renviron')
}