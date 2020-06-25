#!/bin/bash
c=2093
d=2347
e=2637
f=2793
g=3135
a=3520
b=3951
C=4186

play(){
        note="$1"
        length="$2"
        for i in $(seq 0 $length); do
                printf '\xff\n'
        done | aplay -r ${!note}
}

while read line; do
        note="$(echo $line | awk '{ print $1 }')"
        length="$(echo $line | awk '{ print $2 }')"
        play $note $length
done < $1
