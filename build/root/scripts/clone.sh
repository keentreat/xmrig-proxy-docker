#!/bin/sh

if [ -d xmrig-proxy/.git ]; then
  git -C xmrig-proxy pull
else
  git clone $REPO_URI xmrig-proxy
  git -C xmrig-proxy apply ../donate-level.patch
fi
