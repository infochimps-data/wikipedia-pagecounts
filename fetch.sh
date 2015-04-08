#!/usr/bin/env bash

hour=00
month=11
md=${month}05
urlbase=http://dumps.wikimedia.org/other/pagecounts-raw

# Fetch the 4th for all years
for ((year=2008;$year<2015;year+=1)) ; do
  echo $year ;
  # sometimes it has a 0000.gz sometimes 0001.gz
  wget   -nv -N -x ${urlbase}/$year/$year-$month/pagecounts-${year}${md}-${hour}0000.gz || \
    wget -nv -N -x ${urlbase}/$year/$year-$month/pagecounts-${year}${md}-${hour}0001.gz
done

# Fetch election day for election years 
year=2008; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0001.gz
year=2010; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1103-${hour}0000.gz
year=2012; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1107-${hour}0000.gz
year=2014; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0000.gz



