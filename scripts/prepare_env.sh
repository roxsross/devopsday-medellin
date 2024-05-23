#!/bin/sh

echo "Preparing env..."

echo "---------- Installing kubectl ----------"
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.3/2024-04-19/bin/linux/amd64/kubectl
chmod u+x ./kubectl

echo "---------- Installing & configuring litmusctl ----------"
curl --silent -O https://litmusctl-production-bucket.s3.amazonaws.com/litmusctl-linux-amd64-1.5.0.tar.gz -o litmusctl.tar.gz
tar -zxvf litmusctl.tar.gz
chmod +x ./litmusctl
./litmusctl config set-account --endpoint="$1" --username="$2" --password="$3"

echo "---------- Downloading test experiment ----------"
curl "https://raw.githubusercontent.com/roxsross/devopsday-medellin/master/experiments/nginx-pod-delete-test.yaml" -o nginx-pod-delete-test.yaml

echo "---------- Downloading wait_chaos_finish script ----------"
curl -O "https://raw.githubusercontent.com/roxsross/devopsday-medellin/master/scripts/wait_chaos_finish.sh"
chmod +x "./wait_chaos_finish.sh"
