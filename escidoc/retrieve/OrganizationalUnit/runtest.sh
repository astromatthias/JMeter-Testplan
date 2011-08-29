#!/bin/bash

sh $JMETER_HOME/bin/jmeter -n -t escidocRetrieveObject.jmx -l logs/testlog.jtl -j logs/jmeter.log -q testplan.properties -p ../../properties/jmeter.properties

