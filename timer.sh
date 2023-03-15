#! /bin/bash

let start_timer="$(date +%s)";
let click=2;
while [ 0 -gt -1 ];
do
    let current_time="$(date +%s)";
    let seconds=$current_time-$start_timer;
    echo -ne "\r$seconds"
    sleep 1;
done