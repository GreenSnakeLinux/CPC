10 MEMORY &7FFF:MODE 1:LOAD"raster+.bin":MODE 1:PRINT"Calculs en cours..."
20 DEG:AMP=(128-32)/2:AMPZ=14/2:adr=&9000
30 FOR i=0 TO 359 STEP 360/256
40 POKE adr,AMP+AMP*COS (I) :POKE adr+256,1+AMPZ+AMPZ*COS (I) : adr=adr+ 1
50 NEXT
60 gris=&9200:bleu=gris+&400:vert=gris+&800:rouge=gris+&C00
70 FOR i=0 TO 15: FOR i1=0 TO 179 STEP 180/32
80 a=i*SIN(i1):POKE gris,INT(a)+INT(a)*1 6:POKE gris+1,INT(a):gris=gris+2
90 POKE b1eu,INT(a):bleu=bleu+2
100 POKE vert+1,INT(a):vert=vert+2
110 POKE rouge,INT(a)*16:rouge=rouge+2
120 NEXT:NEXT
130 OUT &BC00,7:OUT &BD00,34:OUT &BC00,1:OUT &BD00,50:OUT &BC00,2:OUT &BD00,50
140 MODE 1:CALL &8000
