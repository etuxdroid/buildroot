################################################################################
#
# ETD thermostat
#
################################################################################

ETD_THERM_VERSION = 1.0
ETD_THERM_SITE = ./package/etd_therm/src
ETD_THERM_SITE_METHOD = local

define ETD_THERM_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define ETD_THERM_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/etd_therm $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
