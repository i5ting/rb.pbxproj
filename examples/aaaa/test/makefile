# #
# # Use this makefile to compile service project.
# # When change SDK or add new files ,re-edit values below.
# # zhj
# # 2012-07-17
# # txtw
# #
#  
# export THEOS=/Users/dudan/theos1
# export SDKVERSION=6.0
# export THEOS_DEVICE_IP=10.0.2.3
# #192.168.1.157
# #10.0.2.2
# export CURRENT_VERSION = 1104
#  
# include /Users/dudan/theos1/makefiles/common.mk
#  
# TWEAK_NAME = service
#  
# RESOURCE_DIR = Resources
#  
# DEBUG = 1
#  
# #SUBPROJECTS=servicePreferences
#  
# #编译单元
# #
# #
#  
#  
# #编译 ----------------------------ASIHTTPRequest--------------------
# # service_FILES += Test.m
# service_FILES += h1.m
#  
#  
#  
#  
# #连接单元
# #
# #连接 ----------------------------framework--------------------------
# service_FRAMEWORKS = Foundation UIKit QuartzCore Foundation CoreFoundation CoreGraphics  MobileCoreServices
# # service_FRAMEWORKS += SystemConfiguration  CFNetwork CoreTelephony CoreLocation MapKit
#  
#  
# #连接 ----------------------------dylib------------------------------
# service_LDFLAGS = -lxml2 -lz -licucore -lgcc -lgcc_eh -lstdc++  
# # service_LDFLAGS += -L./BaiduMap/inc -R./BaiduMap/inc/ -lbaidumapapi
#  
# #编译器 ----------------------------------------------------------
# service_CFLAGS += -std=c99 
# # service_CFLAGS += -arch=i386 
# #service_CFLAGS += -all_load
#  
# #资源文件 ----------------------------------------------------------
# # internal-package::
# # ifneq ($(wildcard $(RESOURCE_DIR)/*.png), )
# # mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)
# # cp $(RESOURCE_DIR)/*.png $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)/
# # endif
# # ifneq ($(wildcard $(RESOURCE_DIR)/*.lproj), )
# # mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)
# # rsync -avC $(RESOURCE_DIR)/*.lproj $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)
# # endif
# # ifneq ($(wildcard $(RESOURCE_DIR)/$(TWEAK_NAME).plist), )
# # mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)
# # cp $(RESOURCE_DIR)/$(TWEAK_NAME).plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(TWEAK_NAME)
# # endif
#  
# include $(THEOS_MAKE_PATH)/tweak.mk

# export SDKVERSION=6.0

TARGET=simulator
TWEAK_NAME = IconRenamer
IconRenamer_OBJC_FILES = h1.m
IconRenamer_FRAMEWORKS = Foundation UIKit

# service_CFLAGS += -arch=i386 
sss_INSTALL_PATH = aa


ADDITIONAL_CFLAGS = -std=c99

include /Users/dudan/theos1/makefiles/common.mk
include /Users/dudan/theos1/makefiles/tweak.mk
# include /Users/dudan/theos1/makefiles/framework.mk
# include /Users/dudan/theos1/makefiles/tweak.mk

