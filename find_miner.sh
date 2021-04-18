#!/bin/sh
var=$(ps -aux | grep [k]awpow) # on cherche si le process existe deja, ici je cherche avec le mot clé "kawpow" 
if test -n "$var" # si var non nul, le process est existant
then 
echo 'dejà lancé';
else 
echo 'lancement'
gnome-terminal --window-with-profile=miner -- bash -c '~/Bureau/gminer/miner --algo kawpow --server raven.f2pool.com:3636 --user antebzh.rvn1 -w 0 --log_newjob 0'  &
fi

