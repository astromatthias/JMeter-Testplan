JMETER Test zum ingesten von FOXML Dateien in Fedora.
-----------------------------------------------------

Um den Test zu starten bitte run.sh ausführen. 

Der Test kann über die testplan.properties Datei 
konfiguriert werden. 

Die Datei testdaten.csv enthält eine Liste der 
FOXML Dateien die ingested werden. Jeder Thread list eine Zeile. Es ist daher ratsam die Anzahl der Thread kleiner oder gleich der Anzahl der Zeilen in der testdaten.csv Datei zu setzen.

Die testadten.csv Datei ist we folgt aufgebaut
<absoluter Pfad plus Dateiname>, <Dateiname>, <mime type>

Bsp. 
/opt/data/myfoxml.xml,myfoxml.xml,text/xml 



Viel Spaß

