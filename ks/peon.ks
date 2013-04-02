# Kickstart configuration for peon VPS.
#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Install OS instead of upgrade
install
# Firewall configuration
firewall --enabled --http --ssh --port=443
# Keyboard layouts
keyboard 'us'# Use CDROM installation media
cdrom
# Network information
network  --bootproto=dhcp --device=eth0
network  --bootproto=dhcp --device=eth1
# Reboot after installation
reboot# Root password
rootpw --iscrypted $6$YwbtAsolI/QHuOAe$MtVTiyHM6Tr8Ck0xWrAxavj.Xhtdjsrxhhi/I4tU/G3SnA2ai2ae1ImeE8R8ZnI9/GF2RABmqFxNDse/XBi1c0
# System timezone
timezone America/New_York
# System authorization information
auth  --useshadow  --passalgo=sha512
# Use graphical install
graphical
# System language
lang en_US
# SELinux configuration
selinux --enforcing
# Do not configure the X Window System
skipx

# System bootloader configuration
bootloader --location=mbr
# Partition clearing information
clearpart --all  
autopart

%packages
@development-libs
@development-tools
@editors
@fedora-packager
@mysql
@perl
@php
@python-web
@ruby
@server-cfg
@standard
@system-tools
@text-internet
@virtualization
bzr
cpan-upload
cvs
fpaste
koji
mercurial
mock
perltidy
php-mysql
rpmdevtools
git
vim-enhanced

%end

