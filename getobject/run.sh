#!/bin/bash
# Main Script to run the JMETER test
# Script validate environment and the status of Fedora

# Check if JMETER_HOME is set

jmeter=`env | grep JMETER_HOME`

if [ ${#jmeter} = 0 ]; then 
 echo "Please set JMETER_HOME"
 exit  
fi

# get login detail from testplan properties
if [ -f testplan.properties ]; then
url=`cat testplan.properties | grep authbaseurl | awk -F= {'print $2'}`
user=`cat testplan.properties | grep authuser | awk -F= {'print $2'}`
password=`cat testplan.properties | grep authpass | awk -F= {'print $2'}`
else 

echo "No testplan.properties available"
exit
fi

# spider the url
returncode=`wget  --spider --user $user --password $password $url 2>&1 | grep  "200 OK" | awk {'print  $NF'}`


# check if Status is OK 
echo "checking Fedora Status"
if [ ${#returncode} != 2 ]; then  
       	echo $url "is not running! Goodbye. " 
 	exit
else
	echo $url "is runnning."
        # perform test
        echo "Starting Test..."
        sh runtest.sh	

fi


