
ready.csv: header.csv regions-data.csv
	cat $^ > $@

header.csv:
	echo "id,value" > $@

regions-data.csv: filtered.csv
	cut -d, -f4,6 $< > $@

filtered.csv: proj_13ranmig3.csv
	runhaskell comma-query.hs _ '"TOTAL"' '"T"' _ 2014 < $< > $@

proj_13ranmig3.csv:
	R CMD BATCH fetch.R
