#!/usr/bin/env bash
if [[ -n ${RPC_PASSWORD} ]]; then
  echo "${RPC_PASSWORD}" > /var/lib/boinc-client/gui_rpc_auth.cfg
fi

if [[ $1 ]]; then
  boinc $@
fi
