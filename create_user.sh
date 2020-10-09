#!/bin/bash
USERS=$(cat ./users.txt)
# EXITES_USERS=$(ls ~/vpnuser | cut -d. -f1)
for USER in $USERS
do
if [  ! `ls ~/vpnuser | grep $USER` ]
then 
/usr/bin/expect <<-EOF
spawn bash openvpn-install.sh
expect "Option:"
send "1\n"
expect "Name:"
send "$USER\n"
expect off;
EOF
else 
echo "User $USER is exites"
fi
done
if [ -e ~/*.ovpn ]
then
mv ~/*.ovpn ~/vpnuser
fi

