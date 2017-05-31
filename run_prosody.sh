#! /bin/bash

docker run -d --name prosody\
   -p 5222:5222 \
   -p 5269:5269 \
   -p 5347:5347 \
   -e LOCAL=akhilrs \
   -e DOMAIN=localhost \
   -e PASSWORD=akhilrs \
   -v /home/akhilrs/Workspace/lab/xmpp_chat/prosody/configuration:/etc/prosody \
   -v /home/akhilrs/Workspace/lab/xmpp_chat/logs/prosody:/var/log/prosody \
   -v /home/akhilrs/Workspace/lab/xmpp_chat/prosody/modules:/usr/lib/prosody-modules \
   prosody/prosody
