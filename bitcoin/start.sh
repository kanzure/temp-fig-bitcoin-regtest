#!/bin/bash
echo "before running"
bitcoind -debug=1 -printtoconsole -logtimestamps -txindex=1 -server=1 -regtest 2>&1
echo "after running"
