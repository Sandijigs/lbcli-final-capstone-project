#!/bin/bash
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 243821) 2 | jq -r '.tx[] | select(any(.vin[]; .sequence <= 4294967293)) | .txid'
