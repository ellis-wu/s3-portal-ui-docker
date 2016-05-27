#!/bin/bash

sed -i s/127.0.0.1:8080/${BACKEND_IP}/g config.js
echo "Setting Backend IP Address :" ${BACKEND_IP}

npm start
