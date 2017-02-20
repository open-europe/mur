library(eurostat)
dat <- get_eurostat('proj_13ranmig3', time_format='num')
write.csv(dat, 'proj_13ranmig3.csv')
