#!/bin/bash

if [ ${CIRCLE_BRANCH} == "master" ]; then
git clone -b Add_grafana_build git@github.com:dashbase/dashbase.git
cd dashbase
sed -i 's/grafana-dashboards\ tag:.*/#grafana-dashboards\ tag:${CIRCLE_SHA1::6}/g' ./docker/grafana/build.sh
git config user.name "CI"
git config user.email "ci@dashbase.io"
git add .
git commit -m "Update from dashbase/grafana-dashboards"
echo ""
echo "Commit and push to GitHub"
git push origin
fi