#!/bin/bash

# only run setup if needed
if [ -f /root/exist-setup.cmd ]; then
  (expect -f /root/exist-setup.cmd) && \
  rm /root/exist-setup.cmd
fi

# start app
cd "$EXIST_HOME" && \
./tools/wrapper/bin/exist.sh console