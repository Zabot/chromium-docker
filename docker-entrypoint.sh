#!/bin/sh
/usr/bin/curl -sk $1 > /dev/null
until [ $? -eq 0 ]; do
    /bin/sleep 1
        /usr/bin/curl -sk $1 > /dev/null
    done

    echo "Server is up, launching chromium"
    /usr/bin/chromium-browser $@

