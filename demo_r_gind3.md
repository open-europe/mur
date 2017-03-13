The dataset seems to contain different indexes, which are encoded in
the second colum. Here are the possible values:

```
 mur (master)*$ cut -d, -f2 < demo_r_gind3.csv | sort | uniq -c 
  27691 "CNMIGRAT"
  27691 "CNMIGRATRT"
  28256 "DEATH"
  27810 "GBIRTHRT"
  27691 "GDEATHRT"
  28053 "GROW"
  28053 "GROWRT"
      1 "indic_de"
  30040 "JAN"
  28494 "LBIRTH"
  28256 "NATGROW"
  27691 "NATGROWRT"
```

I assume that "GROWRT" is the growth rate, the percentage of growth

These are the values for time:

```
 mur (master)*$ cut -d, -f4 < demo_r_gind3.csv | sort | uniq -c 
  15985 2000
  17435 2001
  17847 2002
  18339 2003
  18355 2004
  18507 2005
  18555 2006
  18894 2007
  19370 2008
  20074 2009
  20073 2010
  20222 2011
  20372 2012
  20437 2013
  21645 2014
  21648 2015
   1968 2016
      1 "time"
```
