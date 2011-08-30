JMETER Test zum ingesten von XML Dateien in eSciDoc.
-----------------------------------------------------

Um den Test zu starten bitte run.sh ausführen. 

Der Test kann über die testplan.properties Datei 
konfiguriert werden. 

Die Datei testdaten.csv enthält eine Liste der 
eScidoc Dateien die ingested werden. Jeder Thread list eine Zeile. Es ist daher ratsam die Anzahl der Thread kleiner oder gleich der Anzahl der Zeilen in der testdaten.csv Datei zu setzen.

Die testadten.csv Datei ist we folgt aufgebaut
<absoluter Pfad plus Dateiname>, <Dateiname>, <mime type>

Bsp. 
/opt/data/myfoxml.xml,myfoxml.xml,text/xml 


Das Script erstellt eine objects.csv Datei, welche das last-modificationdate, 
den Type und die Id des Objects beinhaltet. Dies geschieht über ein Beanshell script, 
namens xpath.bsh. 

Es ist ausserdem wichtig die richitige JMeter.properties Datei zu laden. 
Diese ist im Verzeichnis ../../properties. Das runtest.sh script ist schon richtig
konfiguriert.  




Viel Spaß

