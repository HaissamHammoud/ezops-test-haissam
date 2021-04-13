#!/bin/bash

docker build . -t haissamfawaz/nodemessageapp:latest 
docker push haissamfawaz/nodemessageapp:latest 

# add the parameter to verion tag 
docker build . -t haissamfawaz/nodemessageapp:$1
docker push haissamfawaz/nodemessageapp:$1 
