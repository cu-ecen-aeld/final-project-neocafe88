
##############################################################
#
# AESD CHAR
#
##############################################################

#AESDCHAR_VERSION = 3af8792b9f64d285be19f2c676a08d9f8dffad8c


# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

AESDCHAR_SITE = ../../assignments-3-and-later-neocafe88
AESDCHAR_SITE_METHOD = local
#AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
