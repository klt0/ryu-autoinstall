#!/bin/bash
echo -e "==My RYU Auto installer.==\n"
echo -e "==using apt-get install environment Package==\n"
apt-get install autoconf binutils bison build-essential ccache flex gawk gettext git libncurses5-dev libssl-dev ncurses-term quilt sharutils subversion texinfo xsltproc zlib1g-dev libxml2-dev libxslt1-dev python-pip python-dev python-eventlet python-routes python-webob python-paramiko python-gevent mininet -y
wait $!
echo -e "\n==using pip install ryu==\n"
pip install --upgrade pip
wait $!
pip install ryu
wait $!
pip install six --upgrade
wait $!
echo -e "\n==using git download ryu source code==\n"
git clone https://github.com/osrg/ryu.git
exit 0
