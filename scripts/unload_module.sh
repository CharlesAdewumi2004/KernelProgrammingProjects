#!/bin/bash

# Check if module name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <module_name (without .ko)>"
    exit 1
fi

MODULE_NAME="$1"

echo "Unloading module $MODULE_NAME..."
sudo rmmod "$MODULE_NAME"

if [ $? -eq 0 ]; then
    echo "Module $MODULE_NAME unloaded successfully!"
else
    echo "Failed to unload module $MODULE_NAME. Is it loaded?"
    exit 1
fi

echo "Checking dmesg output..."
dmesg | tail -n 10
