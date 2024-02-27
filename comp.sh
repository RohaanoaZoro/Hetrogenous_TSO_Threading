#!/bin/sh
GCC=gcc
GCCOPTS="-Wall -std=gnu99 -O2 -pthread"
LINKOPTS=""
/bin/rm -f *.exe *.s
$GCC $GCCOPTS -O2 -c outs.c
$GCC $GCCOPTS -O2 -c utils.c
$GCC $GCCOPTS -O2 -c litmus_rand.c
$GCC $GCCOPTS -O2 -c enable_tso.c
$GCC $GCCOPTS $LINKOPTS -o MP+DSB2.exe outs.o utils.o litmus_rand.o enable_tso.o MP+DSB2.c
$GCC $GCCOPTS -S MP+DSB2.c && awk -f show.awk MP+DSB2.s > MP+DSB2.t && /bin/rm MP+DSB2.s
