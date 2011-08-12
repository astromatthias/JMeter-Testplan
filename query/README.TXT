JMETER test für die Suche von Fedora
-------------------------------------

Über die testplan.properties kann die Suche 
konfiguriert werden. 

/* host und port der Fedora Instanz
host=localhost
port=8080
path=/fedora/objects

/* Test konfiguration
threads=10
threadpause=100
repeat=100
rampup=10

/* suchbegriffe.csv enthält eine Liste von Suchbegriffen
/* Jeder Begriff muss in einer eigenen Zeile stehen
datendir=data/suchbegriffe.csv
/* Name der report datei
reportdir=logs/report.xml

/* Max anzahl der Resultate die zurückgeliefert werden
maxresults=1000

Zurückgeliefert werden alle properties des Objektes, die zur Zeit über die API-A möglich sind. Dies ist nicht konfigurierbar. Falls ja, dann muss ich noch erweiterungen vornehmen. 

Matthias 

