#!/bin/sh
#****************************************************************#
# ScriptName: aa.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2019-01-31 14:02
# Modify Author: @alibaba-inc.com
# Modify Date: 2021-04-04 17:50
# Function: 
#***************************************************************#

for i in `ls  *.md`; do 
	CONTENT=`cat $i | grep title | awk -F":" '{print $2}' | tr -d "\""`; 
	TEXT="excerpt:$CONTENT"; 
	echo "====$i --- $TEXT"
	#sed -i "/author:/a\\$TEXT" $i
done
