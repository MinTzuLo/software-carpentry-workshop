#!/bin/bash
rm  *.txt
rm  *.tmp
rm  *.csv
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -Li
unzip rawdata.zip
rm  *.tmp
for f in *.txt; do
  mv $f ${f/txt/csv}
done

