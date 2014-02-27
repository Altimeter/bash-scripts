#!/bin/bash
#A simple Sieve of Eratosthanes
term=${1:-100}
for ((i=2;i<=$term;i++))
do
	IsPrime[$i]=true
done
for ((i=2;i<=$term;i++))
do
	if ${IsPrime[$i]}
	then
		echo $i
		j=2
		while [ $(($i*$j)) -le $term ]
		do
			IsPrime[$(($i*$j))]=false
			j=$(($j+1))
		done
	fi
done
