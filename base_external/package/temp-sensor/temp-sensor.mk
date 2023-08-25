################################################################################
# temp-sensor
################################################################################
TEMP_SENSOR_VERSION = main
TEMP_SENSOR_GIT_SUBMODULES = YES
TEMP_SENSOR_SITE = https://github.com/neocafe88/temp-sensor.git
TEMP_SENSOR_SITE_METHOD = git
TEMP_SENSOR_INSTALL_STAGING = YES
TEMP_SENSOR_INSTALL_TARGET = YES
TEMP_SENSOR_DEPENDENCIES = aws-iot-device-sdk-cpp-v2
TEMP_SENSOR_LICENSE = GPLv2
TEMP_SENSOR_LICENSE_FILES = LICENSE
TEMP_SENSOR_SUPPORTS_IN_SOURCE_BUILD = NO
TEMP_SENSOR_OVERRIDE_SRCDIR = ~/temp-sensor 

#TEMP_SENSOR_PRE_CONFIGURE_HOOKS += TEMP_SENSOR_CMAKE_MOVE_HOOK

#define TEMP_SENSOR_CMAKE_MOVE_HOOK
#    mkdir $(@D)/build
#endef

# copying excutable to /usr/bin is temporary solution
# currently it fails to install (just to /host not /target)
#
define TEMP_SENSOR_INSTALL_TARGET_CMDS
       $(INSTALL) -d 0755 $(@D)/authfiles/ $(TARGET_DIR)/etc/temp-sensor/
       $(INSTALL) -m 0755 $(@D)/authfiles/* $(TARGET_DIR)/etc/temp-sensor/
       $(INSTALL) -m 0755 $(@D)/tempsensor.sh $(TARGET_DIR)/usr/bin/
       $(INSTALL) -m 0755 $(@D)/tempsensor_schedule $(TARGET_DIR)/etc/cron.d/
       $(INSTALL) -m 0755 $(@D)/buildroot-build/tempsensor $(TARGET_DIR)/usr/bin/
endef

$(eval $(cmake-package))
