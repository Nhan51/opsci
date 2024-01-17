#!/bin/bash

echo "Taille du répertoire courant 	: $(du -hs)"
echo "Taille des fils du répertoire courant 	: 	$(du -h -d 1)"
echo "quota utilisé 	: $(quota)"
