10 CLS
20 PRINT "Listing typed by GreenSnake from Amstrad 100% #48" 
30 'Provided by Amstrad 100 pour 100 Number 48. Listing typed by GreenSnake
100 'Mettre les donnees en memoire.
110 '(C) AMSTRAD 100% & Elmar Krieger
120 MEMORY &5FFF:dat=&6000:MODE 0:FOR a=0 TO 3:READ b:INK a,b:NEXT:FOR a=4 TO 15:INK a,0,26:NEXT:READ a$:LOAD a$,&C000
130 READ a:IF a=-1 THEN 180
140 READ quell,br,ho
150 IF br MOD 4<>0 THEN br=br+1:GOTO 150
160 br=br-2:POKE &9600+a,dat MOD 256:POKE &9680+a,dat\256:POKE &9700+a,ho:POKE &9780+a,br+2
170 FOR b=1 TO ho:FOR c=0 TO br STEP 2:d=PEEK(quell+c):e=PEEK(quell+c+l):f=d OR((e\4) AND &33):POKE dat,f:dat=dat+1:NEXT:POKE quell,255:quell=quell+&800-&C050*(quell>&F7FF):NEXT:GOTO 130
180 SAVE "sprites.dat",b,&6000,&3800:END
190 'Modifier pour d'autres graphismes..
200 'Couleurs du fond
210 DATA 0,13,9,3
220 'Nom de l'ecran
230 DATA test.scr
240 'Sprite num,adr ecran,format X/Y
250 DATA 0,&C000,4,48
260 DATA 1,&C008,8,9
270 DATA 2,&C010,8,16
280 DATA 3,&C018,8,31
290 DATA 4,&C020,16,120
300 DATA -1
