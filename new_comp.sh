gcc -Wall -std=gnu99 -O2 -pthread -O2 -c outs.c
gcc -Wall -std=gnu99 -O2 -pthread -O2 -c utils.c
gcc -Wall -std=gnu99 -O2 -pthread -O2 -c litmus_rand.c
gcc -Wall -std=gnu99 -O2 -pthread -O2 -c enable_tso.c
gcc -Wall -std=gnu99 -O2 -pthread -o MP.exe outs.o utils.o litmus_rand.o enable_tso.o MP.c
