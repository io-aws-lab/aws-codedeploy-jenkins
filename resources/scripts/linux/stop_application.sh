#!/bin/bash
isExistApp=pgrep apollo-missions-api
if [[ -n $isExistApp ]]; then
systemctl stop apollo-missions-api
fi