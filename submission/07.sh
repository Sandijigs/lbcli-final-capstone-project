#!/bin/bash
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 243834) 1 | jq -r '.tx[0]'
