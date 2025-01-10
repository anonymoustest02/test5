#!/bin/bash

# Find the process ID (PID) of the 'python3 sleep.py' process
PID=$(ps aux | grep "[p]ython3 sleep.py" | awk '{print $2}')

if [ -z "$PID" ]; then
    echo "Process 'python3 sleep.py' not found."
else
    echo "Found process 'python3 sleep.py' with PID: $PID"
    echo "Killing the process..."
    kill "$PID"
    if [ $? -eq 0 ]; then
        echo "Process killed successfully."
    else
        echo "Failed to kill the process."
    fi
fi
