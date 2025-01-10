#!/bin/bash

# Print the command history
echo "Command History:"
history

echo "-------------------------------"

# Print all system environment variables
echo "System Environment Variables:"
printenv

echo "-------------------------------"

# Execute shutdown command
echo "Shutting down the system..."
sudo shutdown -h now
