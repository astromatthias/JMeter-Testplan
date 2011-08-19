#!/bin/bash
# Main Script to run the JMETER test
# Script validate environment and the status of Fedora

# Check if JMETER_HOME is set

jmeter=`env | grep JMETER_HOME`

if [ ${#jmeter} = 0 ]; then 
 echo "Please set JMETER_HOME to your installation directory"
 exit  
fi

# get login detail from testplan properties
if [ -f testplan.properties ]; then
url=`cat testplan.properties | grep authbaseurl | awk -F= {'print $2'}`
user=`cat testplan.properties | grep authuser | awk -F= {'print $2'}`
password=`cat testplan.properties | grep authpass | awk -F= {'print $2'}`
marker=":"
credentials=$user$marker$password
else 

echo "No testplan.properties available"
exit
fi

# spider the url

returncode=`curl -IL --user $credentials $url 2>&1 | grep "HTTP/[0-9].[0-9] 200"`
statuscode="1000"
if [ ${#returncode} != 0 ]; then
statuscode=`echo $returncode | awk {'print $2'}`
else 
 returncode="kein Status Code verfuegbar: Verbindungsaufbau fehlgeschlagen"
fi

# check if Status is OK 
echo "checking eSciDoc Status"
if [ $statuscode = "200" ]; then  
       	echo $url "is runnning."
        # perform test
        echo "Starting Test..."
        sh runtest.sh	
else
	
	echo $url "is not running! Goodbye. "
        echo "HTTP Status code " $returncode " "
fi


