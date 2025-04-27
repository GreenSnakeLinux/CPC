10 DEFINT A-Z
20 MODE 1:DIM x(2),y(2),xx(1)
30 RANDOMIZE TIME
40 'deb
50 xO=INT(RND*320)
60 yO=INT(RND*200)
70 xl=INT(RND*320)
80 yl=INT(RND*200)
90 x2=INT(RND*320)
100 y2=INT(RND*200)
110 c=INT(RND*4)
120 GOSUB 150
130 IF INKEY$<>" " THEN GOTO 40
140 END
150 xi=32000:xs=-32000
160 yi=32000:ys=-32000
170 x(0)=x0:y(0)=yo
180 x(1)=x1:y(1)=y1
190 x(2)=x2:y(2)=y2
200 FOR d=0 TO 2
210 z=d+1
220 IF z>2 THEN z=0
230 IF x(d)>xs THEN xs=x(d)
240 IF x(d)<xi THEN xi=x(d)
250 IF y(d)>ys THEN ys=y(d)
260 IF y(d)<yi THEN yi=y(d)
270 NEXT
280 IF NOT(y(0)<>yi AND y(0)<>ys) THEN GOTO 310
290 k=y(0):y(0)=y(1):y(1)=k
300 k=x(0):x(0)=x(1):x(1)=k
310 FOR h=yi TO ys:d=-1
320 FOR q=0 TO 1
330 'debtest
340 d=d+1:IF d>2 THEN d=0
350 a=d+1:IF a>2 THEN a=0
360 IF (h>=y(d) AND h>y(a)) OR (h<=y(d) AND h<y(a)) THEN GOTO 330
370 hh=(h-y(d)):IF hh=0 THEN xx=x(d):GOTO 410
380 div!=(y(a)-y(d))/hh:IF div!=0 THEN xx=x(a):GOTO 410
390 k!=(x(a)-d))/div!
400 xx=x(d)+INT(k!)
410 'suite
420 xx(q)=xx
430 NEXT q
440 MOVE xx(0),h:DRAW xx(1),h,c
450 NEXT h:RETURN
