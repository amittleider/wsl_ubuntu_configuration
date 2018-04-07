#!/bin/bash

# Download the latest stable `nuget.exe` to `/usr/local/bin`
sudo curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe

# Give the file permissions to execute
sudo chmod 755 /usr/local/bin/nuget.exe

