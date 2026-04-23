#!/bin/bash
coinbase_txid=$(bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 216128) 1 | jq -r '.tx[0]')
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 216351) 2 | jq -r --arg cb "$coinbase_txid" '.tx[] | select(.vin[].txid == $cb) | .txid'
