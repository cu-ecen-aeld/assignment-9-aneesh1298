##############################################################
#
# AESDCHAR_DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 8 git contents
AESDCHAR_DRIVER_VERSION = 'c4854763bddd87a78fd46b33d3b8d73c6a78a636'
#AESDCHAR_DRIVER_VERSION = 'ab8df669a89cf2a89645ebc99ea2d10a186e0a96'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
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
