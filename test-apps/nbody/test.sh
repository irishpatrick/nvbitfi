#!/bin/bash

./nbody > a.txt
./nbody > b.txt
diff a.txt b.txt
