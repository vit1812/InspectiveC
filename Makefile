ARCHS = arm64

THEOS_DEVICE_IP = 192.168.1.4

GO_EASY_ON_ME = 1

TARGET := iphone:clang:latest:14.0

ADDITIONAL_OBJCFLAGS = -fobjc-exceptions

# ADDITIONAL_OBJCFLAGS += -S

LIBRARY_NAME = libinspectivec

libinspectivec_FILES = hashmap.mm logging.mm blocks.mm InspectiveC.mm

ifeq ($(call __theos_bool,$(USE_FISHHOOK)),$(_THEOS_TRUE))
	libinspectivec_FILES += fishhook/fishhook.c
	libinspectivec_CFLAGS = -DUSE_FISHHOOK=1
else
	libinspectivec_LIBRARIES = substrate
endif

libinspectivec_FRAMEWORKS = Foundation UIKit
# If building to embed within an Xcode app
# libinspectivec_INSTALL_PATH = @rpath

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/library.mk

after-install::
	install.exec "killall -9 SpringBoard"
