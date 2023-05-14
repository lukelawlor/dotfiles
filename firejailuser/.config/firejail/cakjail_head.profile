# global home config profile
# since this is the "head" file it should be included at the top of a profile

# no in tur net
#net none

# dont change my system stuff please
read-only /

# move to home directory
private-cwd

# private root folders
private-tmp
private-dev

# don't access mounted devices
disable-mnt

# drop capabilities
caps.drop all

# don't print shit
noprinters

# other users besides me don't exist, not even root
noroot

# use default network filtering stuff
netfilter

# no dvds
nodvd

# no useless groups
nogroups

# no input
noinput

# no tv connecting
notv

# no u2f authentication
nou2f

# no video camera access
novideo

# report weird errors to system log
tracelog

# don't create new namespaces
restrict-namespaces

# filter syscalls that firejail filters by default
seccomp

# stop weird code exution
nonewprivs
#(this must be disabled for java to run) memory-deny-write-execute

# some pulse audio thing that i don't know what it does
keep-config-pulse

# create private cache
private-cache
noblacklist ~/.cache
read-write ~/.cache

# don't blacklist xauthority
noblacklist ~/.Xauthority
read-only ~/.Xauthority

# hide etc
blacklist /etc/portage
blacklist /etc/bash
blacklist /etc/default
blacklist /etc/elogind
blacklist /etc/eclean
blacklist /etc/eselect
blacklist /etc/vim
blacklist /etc/neomutt
blacklist /etc/xdg

# hide neovim state
blacklist ~/.local/state/nvim

# don't execute stuff from these weird places
noexec /dev/mqueue
noexec /dev/shm
noexec /run/shm
noexec /var

# This needs to be commented for wine to work
#noexec /tmp

# use legacy gtk input system
env GTK_IM_MODULE=xim
