#!/usr/bin/env Rscript 

data(mtcars)

con <- DBI::dbConnect(RSQLite::SQLite(), "mtcars.sqlite3")
DBI::dbWriteTable(con, "mtcars", mtcars, overwrite = TRUE)
DBI::dbDisconnect(con)
