#!/bin/bash

mkdir -p ~/tmp

VERSION=1.10.1
mono /usr/local/bin/nuget.exe install Grpc.Tools -Version $VERSION -DirectDownload -OutputDirectory ~/tmp

sudo mv ~/tmp/Grpc.Tools.$VERSION/tools/linux_x64/grpc_csharp_plugin /usr/local/bin

# May also want to move Protoc straight from the nuget tools package instead of installing it separately

# Cleanup
rm -r ~/tmp/Grpc.Tools.$VERSION
