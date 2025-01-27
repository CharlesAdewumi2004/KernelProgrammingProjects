#!/bin/bash

# Clean up build artifacts
echo "Cleaning up build artifacts..."
make clean

if [ $? -eq 0 ]; then
    echo "Clean successful!"
else
    echo "Clean failed!"
    exit 1
fi
