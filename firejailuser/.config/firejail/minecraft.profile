include cakjail_head.profile

# see me downloads
noblacklist ~/Downloads
whitelist ~/Downloads
read-write ~/Downloads

# allow java
noblacklist ${PATH}/java
noblacklist ~/.java
noblacklist /etc/java
noblacklist /usr/lib/java
noblacklist /usr/share/java
noblacklist /usr/bin/java

mkdir ~/.minecraft
noblacklist ~/.minecraft
whitelist ~/.minecraft

protocol unix,inet,inet6,netlink

# necessities
#private-bin sh,bash,xterm,readlink,java,minecraft-launcher

dbus-user none
dbus-system none

include cakjail_tail.profile
