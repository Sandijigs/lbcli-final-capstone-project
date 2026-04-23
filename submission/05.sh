#!/bin/bash
input_value=$(bitcoin-cli -signet getrawtransaction 6d5d134b8d3c02d88196d8f483fbff5a9bb121bf8c53e5967f287cdf17f6d0bc true | jq '.vout[0].value')
output_value=$(bitcoin-cli -signet getrawtransaction b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb true | jq '[.vout[].value] | add')
python3 -c "
input_sats = round($input_value * 100000000)
output_sats = round($output_value * 100000000)
print(input_sats - output_sats)
"
