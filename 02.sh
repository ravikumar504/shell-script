#!/bin/bash

Files_TO_DELETE=$(find . -name "*.log" -mtime =14)
echo "$FILES_TO_DELETE"