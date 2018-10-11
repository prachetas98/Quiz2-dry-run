all: wc doczip

mywc: wc.o 
	gcc -o mywc wc.o

build: wc.o
	gcc -o mywc wc.o

mywc.o: wc.c
	gcc -c wc.c

doc: doxygen .

clean:
	rm wc.o

doczip: 
	
	tar cvzf quiz2-practice.tgz /home/prachetas/qui2-dry-run/Quiz2-dry-run/html latex wc.c
 
