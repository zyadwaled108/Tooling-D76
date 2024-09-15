FrontEnd: main.c
	gcc -E main.c -o main.i
MiddleEnd: main.c
	gcc -S main.c -o main.s
BackEnd: main.c
	gcc -c main.c -o main.o
Linker: main.c
	gcc -o main main.c
Run: main.c
	.\main.exe
Build: main.c
	make FrontEnd
	make MiddleEnd
	make BackEnd
	make Linker
Build_Run: main.c
	make Build
	make Run