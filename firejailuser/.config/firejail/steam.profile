# keep the groups of the user running the sandbox
# I need this so Vulkan can access my graphics card, which only users in the vglusers group can use
ignore nogroups

# seccomp breaks some steam stuff unfortunately
ignore seccomp

# needed for bubblewrap suid permission
#ignore caps.drop
#ignore nonewprivs
#ignore restrict-namespaces

include cakjail_head.profile

include allow_wine.profile

# i heard this helps some games run but idk
allow-debuggers

# allow access to steam files and directories
noblacklist ~/.steampath
noblacklist ~/.steampid
whitelist ~/.steampath
whitelist ~/.steampid
read-write ~/.steampath
read-write ~/.steampid

mkdir ~/.steam
noblacklist ~/.steam
whitelist ~/.steam
read-write ~/.steam

# allow access to .local/share
whitelist ~/.local
noblacklist ~/.local
noblacklist ~/.local/share
read-write ~/.local/share

# block these things in .local/share
blacklist ~/.local/share/Mumble
blacklist ~/.local/share/nvim
blacklist ~/.local/share/xorg
blacklist ~/.local/share/recently-used.xbel

# block stuff in .local that isn't .local/share
blacklist ~/.local/*

# needed for STEAM_RUNTIME_PREFER_HOST_LIBRARIES=1 to work
noblacklist /sbin
noblacklist /usr/sbin

# allow access to pressure-vessel disabler script
#noblacklist ~/pressure-vent
#whitelist ~/pressure-vent
#read-only ~/pressure-vent

include cakjail_tail.profile
