#!/bin/bash
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 243825) 2 | jq '[.tx[].vout | length] | add'
