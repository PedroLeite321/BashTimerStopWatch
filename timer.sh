#!/bin/bash
main(){
    echo "Hello World";
    initialize_timer
    exit 0;
}
initialize_timer(){
    let start_timer="$(date +%s)";
    let click=2;
    while [ 0 -gt -1 ];
    do
        let current_time="$(date +%s)";
        let seconds=$current_time-$start_timer;
        echo -ne "\r$seconds";
        formats $seconds;
        sleep 1;
    done
}
formats(){
    let num=$1;
    let min=0;
    let hours=0;
    let day=0

    if((num>59));then
        ((sec=num%60));
        ((num=num/60));
        if((num>59));then
            ((min=num%60));
            ((num=num/60));
            if((num>59));then
                ((hours=num%24));
                ((day=num/24));
            else
                ((hours=num));
            fi
        else
            ((min=num));
        fi
    else    
        ((sec=num));
    fi
    echo -en "\rTimer: D{${day}}:H{${hours}}:M{${min}}:S{${sec}}";
}
main


