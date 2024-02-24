#! /bin/bash

# Launches tensorboard on the remote instance, forwarding the port to your local machine.

export ZONE="us-west4-a"
export INSTANCE_NAME="cs285"

gcloud compute ssh $INSTANCE_NAME --zone=$ZONE --command='sudo pkill -f tensorboard'
gcloud compute ssh $INSTANCE_NAME --zone=$ZONE --command='bash -lc "tensorboard --logdir data --port 6007"' --ssh-flag="-L 6007:localhost:6007"
