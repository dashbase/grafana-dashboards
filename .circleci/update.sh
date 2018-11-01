#!/usr/bin/env bash
set -e

cd ~
git clone git@github.com:dashbase/dashbase-deployment.git
cd dashbase-deployment
sed -i "s=dashbase/grafana.*=dashbase/grafana:$TAG-${CIRCLE_SHA1::6}=g" kubernetes/monitor.yml
git config user.name "CI"
git config user.email "ci@dashbase.io"
git add .
git commit -m "Update from dashbase/grafana-dashboards"
echo ""
echo "Commit and push to GitHub"
git push origin
