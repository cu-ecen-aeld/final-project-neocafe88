
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 95e83ffdb135ab313b7667df797a771249f25a4e

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

LDD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-neocafe88.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = aesd-char-driver


#define KERNEL_MODULE_BUILD_CMDS
#	$(MAKE) -C '$(@D)' LINUX_DIR='$(LINUX_DIR)' CC='$(TARGET_CC)' LD='$(TARGET_LD)' modules
#endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/sbin
#	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/sbin
#	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/sbin
#	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/sbin
#endef

$(eval $(kernel-module))
$(eval $(generic-package))
