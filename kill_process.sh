#!/bin/bash

# Find the process ID (PID) of the 'python3 sleep.py' process
# PID=$(ps aux | grep "[p]ython3 sleep.py" | awk '{print $2}')
# PID=$(ps aux | grep "[\./]run.sh" | awk '{print $2}')
PID=$(pgrep -f -o run_123.sh)
   
if [ -z "$PID" ]; then
    echo "Process 'run.sh' not found." 
else  
    echo "Found process 'run.sh' with PID: $PID"
    echo "Killing the process..."
    pkill -TERM -g "$PID"
    if [ $? -eq 0 ]; then 
        echo "Process killed successfully."
    else
        echo "Failed to kill the process."
    fi
fi

# PIDS=$(ps aux | grep "[\./]run.sh" | awk '{print $2}')
 
# if [ -z "$PIDS" ]; then
#     echo "Process 'run.sh' not found."
# else
#     echo "Found process 'run.sh' with PIDs: $PIDS"
#     echo "Killing the processes..."
#     kill $PIDS
#     if [ $? -eq 0 ]; then
#         echo "Processes killed successfully."
#     else
#         echo "Failed to kill some processes."
#     fi
# fi
 
# ps aux | grep "[\./]run.sh" | awk '{print $2}' | xargs -r kill
