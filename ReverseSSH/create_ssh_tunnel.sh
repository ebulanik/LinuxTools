#!/bin/bash
createTunnel() {
  /usr/bin/ssh -N -R 2222:localhost:22 engblnk@uekk8b7dcd3b.engblnk.koding.io
  if [[ $? -eq 0 ]]; then
    echo Tunnel to jumpbox created successfully
  else
    echo An error occurred creating a tunnel to jumpbox. RC was $?
  fi
}
/bin/pidof ssh
if [[ $? -ne 0 ]]; then
  echo Creating new tunnel connection
  createTunnel
fi
