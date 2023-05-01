
##############################################################
#
# AESD CHAR
#
##############################################################

AESDCHAR_VERSION = 2c02354e1020bc246e05e02b15d3601c9d45916f


# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-neocafe88.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
