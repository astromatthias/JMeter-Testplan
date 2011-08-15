#!/bin/bash

sh $JMETER_HOME/bin/jmeter -n -t FedoraIngest.jmx -l logs/testlog.jtl -j logs/jmeter.log -q testplan.properties

