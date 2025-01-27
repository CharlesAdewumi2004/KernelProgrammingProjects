#!/bin/bash

# Check if module name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <module_name.ko>"
    exit 1
fi

MODULE_NAME="$1"

if [ ! -f "$MODULE_NAME" ]; then
    echo "Module $MODULE_NAME not found. Did you build it?"
    exit 1
fi

echo "Loading module $MODULE_NAME..."
sudo insmod "$MODULE_NAME"

if [ $? -eq 0 ]; then
    echo "Module $MODULE_NAME loaded successfully!"
else
    echo "Failed to load module $MODULE_NAME."
    exit 1
fi

echo "Checking dmesg output..."
dmesg | tail -n 10
