##############################################################
#
# TEMP DRIVER 
#
##############################################################

TEMPDRIVER_VERSION = main
TEMPDRIVER_SITE = https://github.com/neocafe88/temp-driver.git
TEMPDRIVER_SITE_METHOD = git
TEMPDRIVER_OVERRIDE_SRCDIR = ~/temp-driver

$(eval $(kernel-module))
$(eval $(generic-package))
