#!/bin/sh
 
make clean
make
./dlc -e bits.c
