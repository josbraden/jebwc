jebwc: jebwc.yy.c
	gcc -static -o jebwc jebwc.yy.c
jebwc.yy.c: jebwc.l
	flex -o jebwc.yy.c jebwc.l
clean:
	rm -f jebwc jebwc.yy.c
