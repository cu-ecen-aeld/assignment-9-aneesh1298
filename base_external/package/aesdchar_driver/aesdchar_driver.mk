##############################################################
#
# AESDCHAR_DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 8 git contents
AESDCHAR_DRIVER_VERSION = 'e21b000da5227b163edc21bb3ef2dd02aacf97d8'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# Your site should start with git@github.com:
AESDCHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-aneesh1298.git'
AESDCHAR_DRIVER_SITE_METHOD = git
AESDCHAR_DRIVER_GIT_SUBMODULES = YES

AESDCHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/

endef

$(eval $(kernel-module))
$(eval $(generic-package))


