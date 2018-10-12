all: simpleCSVsort

simpleCSVsort: mergesort.c
	gcc -g -Wall -Werror -fsanitize=address mergesort.c simpleCSVsorter.c -o simpleCSVsorter 

test: stringproc.c data_types.c test.c
	gcc -g -Wall -Werror -fsanitize=address stringproc.c data_types.c test.c -o test.o
	./test.o
	rm test.o

mergesort: mergesort.c mergetest.c
	gcc -Wall -Werror -fsanitize=address -g mergesort.c -g data_types.c -o mergetest 
	
clean:
	rm test.o
