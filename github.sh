#!/bin/bash

if git push origin master
then
    echo "Files uploaded to Github"
    sleep 1 
    git pull origin master
    echo "Files synced with Github"
else
    echo "Unable to upload files to Github"
fi

