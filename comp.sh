#!/bin/sh
GCC=gcc
GCCOPTS="-Wall -std=gnu99 -O2 -pthread"
LINKOPTS=""
/bin/rm -f *.exe *.s
$GCC $GCCOPTS -O2 -c outs.c
$GCC $GCCOPTS -O2 -c utils.c
$GCC $GCCOPTS -O2 -c litmus_rand.c
$GCC $GCCOPTS -O2 -c enable_tso.c
$GCC $GCCOPTS $LINKOPTS -o MP.exe outs.o utils.o litmus_rand.o enable_tso.o MP.c
$GCC $GCCOPTS -S MP.c && awk -f show.awk MP.s > MP.t && /bin/rm MP.s
