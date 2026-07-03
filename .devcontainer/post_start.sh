#!/bin/bash
set -e

workspace_root="$(pwd)"
if [ "$(basename "$workspace_root")" != "2024" ] && [ ! -e /workspaces/2024 ]; then
  ln -s "$workspace_root" /workspaces/2024
fi

if [ -f x86-ubuntu-gpu-ml-isca.gz ] && [ ! -f /tmp/x86-ubuntu-gpu-ml-isca ]; then
  cp x86-ubuntu-gpu-ml-isca.gz /tmp
  gunzip /tmp/x86-ubuntu-gpu-ml-isca.gz
fi

if [ -f /tmp/x86-ubuntu-gpu-ml-isca ] && [ ! -e x86-ubuntu-gpu-ml-isca ]; then
  ln -s /tmp/x86-ubuntu-gpu-ml-isca .
fi
