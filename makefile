CC = g++
INC = -I/opt/homebrew/opt/libomp/include
LFLAGS = -L/opt/homebrew/opt/libomp/lib -lomp
CFLAGS = -Wall --std=c++11 -Xpreprocessor -fopenmp -Ofast $(INC) 

%.o: %.cpp
	$(CC) -c -o  $@ $< $(CFLAGS)  

default: main

main: main.o 
	$(CC) -o main main.o $(LFLAGS) 

clean: 
	rm main.o main