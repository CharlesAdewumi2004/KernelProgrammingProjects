#!/bin/bash

# Build the kernel module
echo "Building the kernel module..."
make

if [ $? -eq 0 ]; then
    echo "Build successful!"
else
    echo "Build failed!"
    exit 1
fi
