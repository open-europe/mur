library(eurostat)
dat <- get_eurostat('demo_r_gind3', time_format='num')
write.csv(dat, 'demo_r_gind3.csv')
