7 CLS
8 PRINT "Listing typed by GreenSnake from Amstrad 100% #47" 
9 'Provided by Amstrad 100 pour 100 Number 47. Listing typed by GreenSnake
10 '* BORDER par robin STEFANETTI
20 MEMORY &9FFF:FOR I=&A000 TO &A012
30 READ A$:A=VAL( "&"+A$):POKE I,A
40 NEXT
50 DATA 06,7F,0E,10,ED,49,0E,40,ED,49,0E,10,ED,49,0E,54,ED,49,C9
60 '*** Exemple ***
70 FOR i=1 TO 5000:CALL &A000:NEXT:END
