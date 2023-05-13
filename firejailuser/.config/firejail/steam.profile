include cakjail_head.profile

# allow access to ~/.steam
noblacklist ~/.steam
whitelist ~/.steam
read-write ~/.steam

# needed for STEAM_RUNTIME_PREFER_HOST_LIBRARIES=1 to work
noblacklist /sbin
noblacklist /usr/sbin

include cakjail_tail.profile
