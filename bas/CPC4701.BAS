7 CLS
8 PRINT "Listing typed by GreenSnake from Amstrad 100% #47" 
9 'Provided by Amstrad 100 pour 100 Number 47. Listing typed by GreenSnake
10 ' Elipse
20 MODE 0:INK 0,0:BORDER 0
30 DEFINT X-Y:X=320:Y=200
40 RAD:FOR A=0.2 TO PI*2 STEP 0.2
50 MOVE 320,200
60 FOR R=0 TO 200 STEP A
70 DRAW R*COS(R)+X,R*SIN(R)+Y,Z AND 15
80 Z=Z+1
90 NEXT R
100 WHILE INKEY$="":WEND:CLS
110 NEXT A
