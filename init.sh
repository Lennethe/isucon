#!/bin/bash

sudo rm result.json
sudo rm /var/log/nginx/access.log
sudo service nginx reload
sudo service isubata.golang restart
sudo systemctl restart mysql.service
sudo ./bench/bin/bench  -data=./bench/data -remotes=localhost -output=result.json
