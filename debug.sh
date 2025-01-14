#!/bin/bash

# Toggle debug mode by setting/unsetting the debug environment variable
if [ -z "$NPCHAT_DEBUG" ]; then
    echo "Enabling debug mode..."
    export NPCHAT_DEBUG=true
else
    echo "Disabling debug mode..."
    unset NPCHAT_DEBUG
fi

# Run the server with the current debug setting
python server.py

echo "Debug mode is now $([ ! -z "$NPCHAT_DEBUG" ] && echo "enabled" || echo "disabled")"
