#!/bin/bash

sh $JMETER_HOME/bin/jmeter -n -t escidocPurge.jmx -l logs/testlog.jtl -j logs/jmeter.log -q testplan.properties -p jmeter.properties

