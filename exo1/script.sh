#!/bin/bash

taille_disque=$(df -h | grep "/dsk" | awk '{print $2}' | head -n 1)
taille_mem=$(cat /proc/meminfo | grep "MemTotal" | awk '{print $2}')
modele_gpu=$(lspci | grep VGA | sed -E -n "s/(.*:){2}.(.*)/\2/p")
ID=$(lspci | grep VGA | awk '{print $1'})

echo "Taille du disque 		: $taille_disque"
echo "Taille de la mémoire 	: $taille_mem"
cat /proc/cpuinfo | grep "cpu cores" | sed -n '1p'
echo "Modele GPU	: $modele_gpu"
echo "ID GPU		: $ID"
echo "Détails GPU 	: $(lspci -v -s ${ID})"
