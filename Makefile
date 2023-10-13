CC = gcc

mat_mul: mat_mul.c
	gcc mat_mul.c -o mat_mul -lm

clean:
	rm mat_mul

test: mat_mul
	bash test.sh
