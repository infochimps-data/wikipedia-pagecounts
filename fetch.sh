#!/usr/bin/env bash

hour=00
month=11
md=${month}05
urlbase=http://dumps.wikimedia.org/other/pagecounts-raw

# # Fetch the 4th for all years
# for ((year=2008;$year<2015;year+=1)) ; do
#   echo $year ;
#   # sometimes it has a 0000.gz sometimes 0001.gz
#   wget   -nv -N -x ${urlbase}/$year/$year-$month/pagecounts-${year}${md}-${hour}0000.gz || \
#     wget -nv -N -x ${urlbase}/$year/$year-$month/pagecounts-${year}${md}-${hour}0001.gz
# done

# Fetch election day for election years, the 4th otherwise
year=2008; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0001.gz
year=2009; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0000.gz
year=2010; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1103-${hour}0000.gz
year=2011; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0000.gz
year=2012; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1107-${hour}0000.gz
year=2013; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0001.gz
year=2014; echo $year; wget -nv -N -x ${urlbase}/$year/$year-11/pagecounts-${year}1105-${hour}0000.gz

# Also fetch April Fool's Day for each year
year=2008; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2009; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0001.gz
year=2010; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2011; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2012; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2013; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2014; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz
year=2015; echo $year; wget -nv -N -x ${urlbase}/$year/$year-04/pagecounts-${year}0402-${hour}0000.gz



