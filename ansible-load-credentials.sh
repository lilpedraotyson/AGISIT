#!/bin/bash
export GCE_PEM_FILE_PATH=./steam-lock-366816-aa7607e84467.json
export GCE_PROJECT=$(grep project_id $GCE_PEM_FILE_PATH | sed -e 's/  "project_id": "//g' -e 's/",//g')
export GCE_EMAIL=$(grep client_email $GCE_PEM_FILE_PATH | sed -e 's/  "client_email": "//g' -e 's/",//g')
gcloud config set project $GCE_PROJECT
