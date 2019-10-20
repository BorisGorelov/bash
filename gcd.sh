#!/bin/bash

gcd () # two arguments
{
    m=$1; n=$2
    if [[ m -eq n ]]; then
        echo "GCD is $m"
    elif [[ m -gt n ]]; then
        let "a=$m-$n"
        gcd $n $a
    else
        let "a=$n-$m"
        gcd $m $a
    fi
}

while :; do
    read m n
    if [[ -z $m ]]; then
        echo "bye"
        break
    else
        gcd $m $n
    fi
done