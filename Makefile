
ready.csv: header.csv regions-data.csv
	cat $^ > $@

header.csv:
	echo "id,value" > $@

regions-data.csv: filtered.csv
	cut -d, -f3,5 $< > $@

filtered.csv: demo_r_gind3.csv
	runhaskell comma-query.hs _ '"GROWRT"' _ 2014 < $< > $@

demo_r_gind3.csv:
	R CMD BATCH fetch.R
