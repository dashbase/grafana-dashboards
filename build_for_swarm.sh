#!/usr/bin/env bash

cp dashboards_swarm/* provisioning/dashboards/

docker build -t dashbase/grafana:swarm .
docker push dashbase/grafana:swarm
