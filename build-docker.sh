#!/bin/bash

# Unless there are changes in the code, you only need to run this once
docker build --no-cache -t verus-rpc-server .
# Run using the host network as the Verus deamon is running in the host
docker run -it --network host --rm --name verus-rpc-server verus-rpc-server