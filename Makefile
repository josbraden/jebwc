jebwc: jebwc.yy.c
	gcc -static -O3 -o jebwc jebwc.yy.c
jebwc.yy.c: jebwc.l
	flex -o jebwc.yy.c jebwc.l
clean:
	rm -f jebwc jebwc.yy.c
